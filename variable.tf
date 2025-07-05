variable "vpc_cidr" {
   type = string

}

variable "enable_dns_hostnames" {
   default = true

}

variable "common_tags" {
    default = {}
}

variable "environment" {
    type = string

}

variable "project_name" {
    type = string

}

variable "vpc_tags" {
    default = {}

}