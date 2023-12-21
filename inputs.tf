variable "vpc_name" {
  type    = string
  default = "ntier"

}
variable "region" {
  type    = string
  default = "us-east-1"

}
variable "vpc_cidr" {
  type    = string
  default = "10.100.0.0/16"

}
variable "subnet_names" {
  type    = list(string)
  default = ["web", "app", "date"]

}