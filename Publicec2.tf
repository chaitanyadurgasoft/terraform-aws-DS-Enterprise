module "dsb1-ec2" {
  source         = "app.terraform.io/DS-TEP/dsb1-ec2/aws"
  version        = "1.0.0"
  env            = module.dsb1-network.env
  ami            = "ami-0b05d988257befbbe"
  key            = "Default_Key"
  instance_type  = "t2.micro"
  Public_Subnet  = module.dsb1-network.Public_Subnet_ID_1
  sg_id          = module.Prod_Security.sg_id
  vpc_name       = module.dsb1-network.vpc_name
  private_subnet = module.dsb1-network.Private_Subnet_ID
}
