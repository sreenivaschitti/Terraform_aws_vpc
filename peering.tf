resource "aws_vpc_peering_connection" "main" {
  
  peer_vpc_id   = data.aws_vpc.default_vpc.id
  vpc_id        = aws_vpc.main.id

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

tags = merge(

local.common_tags,{

    Name = "${var.project}-${var.environment}-default"
}


)


}