module "dsb1-sg" {
  source       = "app.terraform.io/DS-TEP/dsb1-sg/aws"
  version      = "1.0.0"
  vpc_id       = module.Prod_Network.vpc_id
  vpc_name     = module.Prod_Network.vpc_name
  env          = module.Prod_Network.env
  source_ports = ["22", "80", "443"]
}
