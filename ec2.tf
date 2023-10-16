resource "aws_instance" "test-ec2" {
  instance_type = var.ec2                # "t2.micro"
  ami           = data.aws_ami.my-ami.id # "ami-053b0d53c279acc90"
  tags = {
    name      = var.name # "appServer"
   subnet_id = aws_subnet.test-subnet.id

    depends_on = "aws_vpc.test-vpc.id"

  }

}

resource "aws_vpc" "test-vpc" {
  cidr_block = var.vpc # "10.0.0.0/16"
}

resource "aws_subnet" "test-subnet" {
  vpc_id     = aws_vpc.test-vpc.id
  cidr_block = var.subnet

  tags = {
    Name = "test"
  }
}

