variable "user_name" { default = "ec2-user" }
variable "ssh_key_path" { default = "./cassandra-big-data-eu-west-1.pem" }
variable "ssh_key_name" { default = "cassandra-big-data-eu-west-1" }
variable "cidr" { default = "10.2.4.0/23" }
variable "instance_type" { default = "t2.medium" }
variable "security_group_name" { default = "terraform" }
variable "ami" { default = "ami-785db401" }
# default source_cidr_block is the main subnet
# defined in aws_subnet.main.cidr_block.
variable "source_cidr_block" {
  description = "The source CIDR block to allow traffic from"
  default     = ["10.2.5.128/25"]
  type        = "list"
}
variable "cassandra_ebs_volume_size" { default = 50 }

variable "provider" { default = "eu-west-1"}
variable "region" { default = "eu-west-1a" }
