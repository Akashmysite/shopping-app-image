variable "project_name" {
type = string
description = "Project Name"
}
variable "project_env" {
type = string
description = "Project Environment"
}
variable "source_ami_id" {
type = string
description = "AMI of instances"
}
locals {
image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
image-name = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}
