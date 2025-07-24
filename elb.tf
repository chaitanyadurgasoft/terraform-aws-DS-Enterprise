module "dsb1-elb" {
  source         = "app.terraform.io/DS-TEP/dsb1-elb/aws"
  version        = "1.0.0"
  tgname         = "Prod-DS-TG"
  vpc_id         = module.Prod_Network.vpc_id
  env            = module.Prod_Network.env
  PrivateServers = module.Prod_Ec2.Privateec2_ID
  subnets        = module.Prod_Network.Public_Subnet_ID
  nlbname        = "Prod-NLB"
  PublicServers  = null
}
