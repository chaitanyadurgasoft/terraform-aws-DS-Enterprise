module "Prod_Ec2" {
  source         = "../modules/EC2"
  env            = module.Prod_Network.env
  ami            = "ami-0b05d988257befbbe"
  key            = "Default_Key"
  instance_type  = "t2.micro"
  Public_Subnet  = module.Prod_Network.Public_Subnet_ID_1
  sg_id          = module.Prod_Security.sg_id
  vpc_name       = module.Prod_Network.vpc_name
  private_subnet = module.Prod_Network.Private_Subnet_ID
}
