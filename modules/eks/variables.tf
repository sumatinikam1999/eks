variable "aws_public_subnet" {
  description = "List of public subnet where EKS will be deployed"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID where EKS cluster will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "endpoint_private_access" {
  description = "Enable or disble access to k8s api server"
  type        = bool
  default     = false
}

variable "endpoint_public_access" {
  description = "Enable or disble access to k8s api server"
  type        = bool
  default     = true
}

variable "public_access_cidrs" {
  description = "CIDR blocks that can access EKS cluster API"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
}

variable "scaling_desired_size" {
  description = "Desired number of worker nodes in the EKS cluster group"
  type        = number
  default     = 2
}

variable "scaling_max_size" {
  description = "Max number of worker nodes in EKS"
  type        = number
  default     = 5
}

variable "scaling_min_size" {
  description = "Min number of worker nodes in EKS"
  type        = number
  default     = 1
}

variable "instance_types" {
  description = "List of ec2 instances types in eks node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "key_pair" {
  description = "Name of the SSH key pair accessing worker node"
  type        = string
}
