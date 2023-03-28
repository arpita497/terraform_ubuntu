module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name = "new-instance"

  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  key_name               = "new-keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-0196807dda5c80d08"]
  subnet_id              = "subnet-0b5245948e8902781"

  tags = {
    Terraform   = "true"
    Environment = "pre-prod"
  }
}
