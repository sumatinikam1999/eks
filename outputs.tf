output "cluster_id" {
  description = "The unique identifier of cluster"
  value       = module.eks.eks_cluster_id
}

output "cluster_endpoint" {
  description = "The endpoint url of eks cluster"
  value       = module.vpc.cluster_endpoint
}

output "cluster_name" {
  description = "The name of k8s cluster"
  value       = module.eks.cluster_name
}

output "aws_public_subnets" {
  description = "List of public subnets created in vpc"
  value       = module.vpc.aws_public_subnet
}

output "vpc_id" {
  description = "The id of the created vpc"
  value       = module.vpc.vpc_id
}
