module "rds-db" {
  source  = "terraform-aws-modules/rds/aws"
  version = "5.6.0"

  identifier = "rds-terraform-db"

  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t3.micro"
  allocated_storage = 5

  db_name  = "myrdsdb"
  username = "user"
  password = "User@123"
  port     = "3306"

  vpc_security_group_ids = ["sg-0196807dda5c80d08"]

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  tags = {
    Owner       = "user"
    Environment = "dev"
  }

  # DB subnet group
  create_db_subnet_group = true
  subnet_ids             = ["subnet-04d49fa3219b46c6c", "subnet-023b4edb8cd7f9cd0"]

  # DB parameter group
  family = "mysql5.7"

  # DB option group
  major_engine_version = "5.7"

  #multi_az
  multi_az = var.multi_az

}
