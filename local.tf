locals {
    resource = "${var.project_name}-${var.environment}"
    az_names= slice(data.aws_availability_zones.avaliable.names,0,2)
}