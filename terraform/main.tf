module "networking" {
  source = "./networking"
}


module "peering" {
  source = "./peering"

  tool_vpc_id             = module.networking.tool_vpc_id
  tool_cidr_block         = module.networking.tool_cidr_block
  default_vpc_id          = module.networking.default_vpc_id
  default_vpc_cidr_block  = module.networking.default_vpc_cidr_block
  public_route_table_id      = module.networking.public_route_table_id
  private_route_table_id      = module.networking.private_route_table_id

}

module "compute" {
  source = "./compute"
  public_subnet_id = module.networking.public_subnet_id
  publicSG_id = module.networking.publicSG_id
  private1_subnet_id = module.networking.private1_subnet_id
  private2_subnet_id = module.networking.private2_subnet_id
  privateSG_id = module.networking.privateSG_id
}

terraform {
  backend "s3" {
    bucket  = "anuj-ki-module-ki-balti"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}