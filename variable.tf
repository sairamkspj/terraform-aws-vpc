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

variable "public_subnet_tags" {
    default = {}

}

variable "public_subnet_cidrs" {
    type = list
    validation{
        condition = length(var.public_subnet_cidrs)==3
        error_message = "please provide two subnet cidrs"

    }

}