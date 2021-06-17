resource "aws_security_group" "allow-all" {
vpc_id=aws_vpc.main.id
name="allow-all"
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
from_port = 0
to_port = 6556
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

tags = {
    Name = "allow_RDP"
  }
 
}
resource "aws_security_group" "webserver-sg1" {
    name = "websg02"
    vpc_id = aws_vpc.main.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "RDP"
        from_port = 3389
        to_port = 3389
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}