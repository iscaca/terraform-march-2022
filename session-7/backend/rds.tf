resource "aws_db_instance" "wordpress" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = "wordpress"                        # Name of the database, not a RDS Name
  username             = "admin"
  password             = random_password.db_password.result
  identifier           = "${var.env}-rds-instance"    // format(%s-rds-instance, var.env)    # Name of the RDS Instance, not a database
  publicly_accessible  = var.env == "dev" ? true : false
  skip_final_snapshot  = var.env == "dev" ? true : false
  final_snapshot_identifier = var.env == "dev" ? null : "${var.env}-db-snapshot"
}


// dev-rds-instance

// dev = true
// prod = false

// 1 == 1 > True
// 1 == 2 > False
// Equality Operator : takes 2 values, measures them and gives boolean as a result
// 1 != 1 > False
// 1 != 2 > True


// == (equal)
// != (not equal)


// condition ? first_val(true) : second_val(false)
// john == john ? mercedes : toyota   > mercedes
// john != john ? apple : orange      > orange

// Dev
// skip_final_snapshot = true
// final_snapshot_identifier = empty(null)

// Qa
// skip_final_snapshot = false
// final_snapshot_identifier = qa-db-snapshot

// prod
// skip_final_snapshot = false
// final_snapshot_identifier = prod-db-snapshot
