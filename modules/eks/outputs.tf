output "eks_cluster_endpoint" {
  description = "The endpoint for the eks cluster"
  value       = aws_eks_cluster.eks_cluster_endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "The certificate authority data for EKS cluster"
  value       = aws_eks_cluster.eks_cluster_certificate_authority_data
}

output "eks_cluster_id" {
  description = "The unique ID of eks cluster"
  value       = aws_eks_cluster.eks_cluster_id
}

output "eks_cluster_name" {
  description = "The name of the eks cluster"
  value       = aws_eks_cluster.eks_cluster_name
}
