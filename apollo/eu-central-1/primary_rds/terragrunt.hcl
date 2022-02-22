terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-rds-aurora.git?ref=v5.2.0"
}

include {
  path = find_in_parent_folders()
}

###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/rds-aurora/aws/5.2.0?tab=inputs
###########################################################
inputs = {
  # The existing subnet group name to use
  # type: string
  db_subnet_group_name = ""

  # Aurora database engine type, currently aurora, aurora-mysql or aurora-postgresql
  # type: string
  engine = "aurora-mysql"

  # Aurora database engine version
  # type: string
  engine_version = "5.7.12"

  # Instance type to use at master instance. If instance_type_replica is not set it will use the same type for replica instances
  # type: string
  instance_type = "db.t3.large"

  # Master DB password. Note - when specifying a value here, 'create_random_password' should be set to `false`
  # type: string
  password = "6YLPPj6ZqsUY"

  # The port on which to accept connections
  # type: string
  port = "3306"

  # Number of reader nodes to create.  If `replica_scale_enable` is `true`, the value of `replica_scale_min` is used instead.
  # type: number
  replica_count = 0

  # Master DB username
  # type: string
  username = "bengal"

  # VPC ID
  # type: string
  vpc_id = ""

  # List of VPC security groups to associate to the cluster in addition to the SG we create in this module
  # type: list(string)
  vpc_security_group_ids = []

  
}
