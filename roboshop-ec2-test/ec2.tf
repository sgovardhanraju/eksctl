module "catalogue" {
    source = "../terraform-aws-instance"
    # ami_id = "ami-09c813fb71547fc4f"
    # sg_ids = ["sg-0caa92da7b80302bc"]
    # instance_type = "t3.micro"
    # tags = {
    #     Name    = "modules-demo"
    # }
    ami_id = var.ami_id
    sg_ids = var.sg_ids
    instance_type = var.instance_type
    tags = var.tags
}

output "public_ip" {
    value = module.catalogue.public_ip
}

output "private_ip" {
    value = module.catalogue.private_ip
}

output "id" {
    value = module.catalogue.instance_id
}