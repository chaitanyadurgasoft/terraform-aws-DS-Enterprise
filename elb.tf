module "dsb1-elb" {
  source         = "app.terraform.io/DS-TEP/dsb1-elb/aws"
  version        = "1.0.0"
  tgname         = "Prod-DS-TG"
  vpc_id         = module.dsb1-network.vpc_id
  env            = module.dsb1-network.env
  PrivateServers = module.dsb1-ec2.Privateec2_ID
  subnets        = module.dsb1-network.Public_Subnet_ID
  nlbname        = "Prod-NLB"
  PublicServers  = null
}
