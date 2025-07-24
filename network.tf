module "Prod_Network" {
  source              = "../modules/Network"
  vpc_cidr            = "172.25.0.0/16"
  vpc_name            = "Prod-DS"
  Public_Subnet_Cidr  = ["172.25.1.0/24", "172.25.2.0/24", "172.25.3.0/24"]
  az                  = ["us-east-2a", "us-east-2b", "us-east-2c"]
  Private_Subnet_Cidr = ["172.25.10.0/24", "172.25.20.0/24", "172.25.30.0/24"]
  env                 = "Prod"
  NGW_ID              = module.Prod_Nat.NGW_ID
}
