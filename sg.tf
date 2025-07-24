module "dsb1-sg" {
  source       = "app.terraform.io/DS-TEP/dsb1-sg/aws"
  version      = "1.0.0"
  vpc_id       = module.dsb1-network.vpc_id
  vpc_name     = module.dsb1-network.vpc_name
  env          = module.dsb1-network.env
  source_ports = ["22", "80", "443"]
}
