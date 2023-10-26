variable "aws_access_key" {
  type    = string
}

variable "aws_secret_key" {
  type    = string
}

source "amazon-ebs" "example" {
  ami_name      = "my-custom-ami {{timestamp}}"
  source_ami    = "ami-0ff7f29dc49423a92"
  instance_type = "t2.micro"
  ssh_username  = "Administrator"
  region        = "us-east-1"
  access_key    = var.aws_access_key
  secret_key    = var.aws_secret_key
}

build {
  sources = ["source.amazon-ebs.example"]

  provisioner "shell-local" {
    inline = [
      "install-application.ps1"
    ]
  }
}
