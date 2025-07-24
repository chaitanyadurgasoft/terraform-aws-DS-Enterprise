module "dsb1-nat" {
  source          = "app.terraform.io/DS-TEP/dsb1-nat/aws"
  version         = "1.0.0"
  env             = module.dsb1-network.env
  Public_Subnet_1 = module.dsb1-network.Public_Subnet_ID_1
  vpc_name        = module.dsb1-network.vpc_name
}
