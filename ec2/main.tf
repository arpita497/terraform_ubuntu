module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name = "newterr-instance"

  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  key_name               = "new-keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-041fb7149ed0c6df5"]
  subnet_id              = "subnet-0834a179c540198ea"

  tags = {
    Terraform   = "true"
    Environment = "pre-prod"
  }
}
