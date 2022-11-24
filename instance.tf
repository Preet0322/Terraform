provider “aws” {
    region = “us-east-1”
}
 
resource “aws_instance” “ramserver1” {
  count = "1"
    ami = “ami-12345qwert”
    instance_type = “t2.micro”
      key_name = "ramkeynew"
  subnet_id = "subnet-098833647248" 
  security_groups = ["sg-0984239042423429"]
  tags=
    {
      Name= "ramserver1"
      Env= "dev"
    }
}
