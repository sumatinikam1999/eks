resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

module "vpc" {
  source                  = "./modules/vpc"
  tags                    = "project"
  instance_tenancy        = "default"
  vpc_cidr                = "10.0.0.0/16"
  public_sn_count         = 2
  public_cidrs            = ["10.0.1.0/24", "10.0.2.0/24"]
  vpc_name                = "project-vpc"
  map_public_ip_on_launch = true
  rt_route_cidr_block     = "0.0.0.0/0"
}

module "eks" {
  source                  = "./modules/eks"
  aws_public_subnet       = module.vpc.aws_public_subnet
  vpc_id                  = module.vpc.vpc_id
  cluster_name            = "module-eks-${random_string.suffix.result}"
  endpoint_public_access  = true
  endpoint_private_access = false
  public_access_cidrs     = ["0.0.0.0/0"]
  node_group_name         = "project"
  scaling_desired_size    = 1
  scaling_max_size        = 2
  scaling_min_size        = 1
  instance_types          = ["t3.small"]
  key_pair                = "my-key-pair"
}
