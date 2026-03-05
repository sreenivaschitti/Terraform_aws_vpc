output "azs_info" {

    value = data.aws_availability_zones.available


}

output "eip_info" {

    value = aws_eip.main.id


}