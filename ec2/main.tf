module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name = "terrDemo1-instance"

  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  key_name               = "new-keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-0e7a78055014d406a"]
  subnet_id              = "subnet-046826bb5e37ac442"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
