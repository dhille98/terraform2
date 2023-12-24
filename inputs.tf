variable "region" {
  type    = string
  default = "ap-south-1"


}
variable "vpc_cdir" {
  type    = string
  default = "10.100.0.0/16"

}
variable "subnet_names" {
  type    = list(string)
  default = ["web", "data", "app"]

}