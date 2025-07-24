module "Prod_Nat" {
  source          = "../modules/NAT"
  env             = module.Prod_Network.env
  Public_Subnet_1 = module.Prod_Network.Public_Subnet_ID_1
  vpc_name        = module.Prod_Network.vpc_name
}
