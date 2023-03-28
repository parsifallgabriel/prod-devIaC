module "aws-dev" {
    source = "../../infra"
    instancia = "t2.micro"
    regiao_aws = "us-west-2"
    chave = "IaC-DEV"
    security_group_name = "dev_security_group"
    env_tag =  "DEV"
    machine_tag = "Phyton Django DEV"
    
}

output "IP" {
    value = module.aws-dev.IP_Publico
  
}