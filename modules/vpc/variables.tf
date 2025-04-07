variable "vpc_cidr" {
  description = "CIDR block for vpc"
  type        = string
}

variable "igw_name" {
  description = "IGW"
  type        = string
  default     = "project_igw"
}

variable "public_sn_count" {
  description = "public subnet count"
  type        = number
}

variable "public_cidrs" {
  description = "list of CIDR for public subnets"
  type        = list(string)
}

variable "instance_tenancy" {
  description = "Tenancy"
  type        = string
  default     = "dEfault"
}

variable "tags" {
  description = "Tags"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Map IP"
  type        = bool
  default     = true
}

variable "rt_route_cidr_block" {
  description = "RT"
  type        = string
  default     = "0.0.0.0/0"
}

variable "vpc_name" {
  description = "vpc name"
  type        = string
}

