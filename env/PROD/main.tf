module "aws-prod" {
    source = "../../infra"
    instancia = "t2.micro"
    regiao_aws = "us-west-2"
    chave = "IaC-PROD"
    security_group_name = "prod_security_group"
    env_tag =  "PROD"
    machine_tag = "Phyton Django PROD"
    
}
output "IP" {
    value = module.aws-prod.IP_Publico
  
}