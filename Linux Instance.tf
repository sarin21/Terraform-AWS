#resource "aws_key_pair" "hclmsiwin" {
#  key_name   = "hclmsiwin"
#  public_key = file(var.PATH_TO_PUBLIC_KEY)
#}

resource "aws_instance" "myinstance" {
ami = "ami-06a0b4e3b7eb7a300"
instance_type = "t2.micro"
vpc_security_group_ids = ["${aws_security_group.webserver-sg1.id}"]
key_name = aws_key_pair.hclmsiwin.key_name
subnet_id = aws_subnet.main-public-2.id
tags = {
Name = "linux-terraform"
}
}
output "lin_ip" {
 
value="${aws_instance.win-ec2-terraform.public_ip}"
}