output "out_pubsub_id" {
  value = aws_subnet.pubsubnets[*].id

}

output "out_pirsub_id" {
  value= aws_subnet.pirsubnets[*].id
}