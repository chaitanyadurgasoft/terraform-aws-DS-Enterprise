module "Prod_Security" {
  source       = "../modules/SG"
  vpc_id       = module.Prod_Network.vpc_id
  vpc_name     = module.Prod_Network.vpc_name
  env          = module.Prod_Network.env
  source_ports = ["22", "80", "443"]
}
