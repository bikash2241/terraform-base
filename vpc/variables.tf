variable "vpc_cidr" { 
    type = string
}
variable "region" { 
    type = string
}

variable "instance_tenancy" {
    type = string
}

variable "project" {
    type = string
}

variable "vpc_pub_cidr_1a" {
    type = string
}

variable "pub_sub_availability_zone_1a" {
    type = string
}
variable "vpc_pub_cidr_1b" {
    type = string
}

variable "pub_sub_availability_zone_1b" {
    type = string
}

variable "vpc_pvt_cidr_1a" {
    type = string
}

variable "pvt_sub_availability_zone_1a" {
    type = string
}
variable "vpc_pvt_cidr_1b" {
    type = string
}

variable "pvt_sub_availability_zone_1b" {
    type = string
}
