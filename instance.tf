provider “aws” {
    region = “us-east-1”
}
 
resource “aws_instance” “Terraform” {
  count = "1"
    ami = “ami-0b0dcb5067f052a63”
    instance_type = “t2.micro”
      key_name = "Ansible"
  subnet_id = "subnet-00f3a3ba8c280c836" 
  security_groups = ["sg-00f2df5a62e6dcecc"]
  tags=
    {
      Name= "Ansible"
      Env= "dev"
    }
}
