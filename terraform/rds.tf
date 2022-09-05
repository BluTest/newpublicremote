resource "aws_db_instance" "mysql" {
  name                 = "test-mysql-1"
  allocated_storage    = 200
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  publicly_accessible  = true
}

variable "database_name" {
  type    = string
  default = "test-mysql-1"
}

variable "rds_password" {
  type = string
}
