variable "project" {
    default = "roboshop"
}

variable "subnet_id" {
  type        = string
  default = "subnet-027e9b95abbffe496"
  description = "subnet ID of bharath RHEL9"
}

variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow-all-roboshop"
}

variable "sg_description" {
    default = "allowing all ports from all IP"
}

variable "instances" {
    default = ["mongodb","redis"]
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    default = 0
}


variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of bharathdevops RHEL9"
}

variable "instance_type" {
    default = {
        dev = "t3.micro"
        prod = "t3.small"
    }
    
}
