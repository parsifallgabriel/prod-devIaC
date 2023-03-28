resource "aws_security_group" "security_group" {
    name = var.security_group_name
    description = var.security_group_name
    ingress {
        cidr_blocks = [ "0.0.0.0/0" ]
        ipv6_cidr_blocks = [ "::/0" ]
        from_port = 0
        to_port = 0
        protocol = "-1"
    }
    egress {
        cidr_blocks = [ "0.0.0.0/0" ]
        ipv6_cidr_blocks = [ "::/0" ]
        from_port = 0
        to_port = 0
        protocol = "-1"

    }
    tags = {
      "Name" = var.security_group_name
    }
}