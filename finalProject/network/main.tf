module "globalvars" {
  source = "../../modules/globalvars"
}

locals {
  default_tags = merge(module.globalvars.default_tags, { "env" = var.env })
  prefix       = module.globalvars.prefix
  name_prefix  = "${local.prefix}-${var.env}"
}


module "vpc-dev" {
  source = "../../modules/non-production"
  #source              = "git@github.com:igeiman/aws_network.git"
  env                 = var.env
  vpc_cidr            = var.vpc_cidr
  public_cidr_blocks  = var.public_subnet_cidrs
  private_cidr_block  = var.private_subnet_cidrs
  private_route_table = var.private_route_table
  public_route_table  = var.public_route_table
  prefix              = local.name_prefix
  default_tags        = local.default_tags
}