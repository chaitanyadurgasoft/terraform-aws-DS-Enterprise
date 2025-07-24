module "dsb1-nat" {
  source          = "app.terraform.io/DS-TEP/dsb1-nat/aws"
  version         = "1.0.0"
  env             = module.Prod_Network.env
  Public_Subnet_1 = module.Prod_Network.Public_Subnet_ID_1
  vpc_name        = module.Prod_Network.vpc_name
}
