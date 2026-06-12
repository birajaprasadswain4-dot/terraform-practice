resource "aws_instance" "web" {
  ami           = "ami-0152204c1a187337c"   # Amazon Linux 2 AMI (Mumbai)
  instance_type = "t3.micro"
  key_name      = "biraj"

  tags = {
    Name = "Provisionerec2"
  }

  # Copy a file from local machine to EC2
  provisioner "file" {
    source      = "test.txt"
    destination = "/home/ec2-user/test.txt"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("biraj.pem")
      host        = self.public_ip
    }
  }

  # Run commands on EC2 after creation
  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "echo 'Hello from Terraform Provisioner' | sudo tee /var/www/html/index.html"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("biraj.pem")
      host        = self.public_ip
    }
  }

  # Run command on your local machine
  provisioner "local-exec" {
    command = "echo EC2 Created with IP: ${self.public_ip}"
  }
}