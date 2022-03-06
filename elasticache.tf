resource "aws_elasticache_cluster" "default" {
  cluster_id           = var.cluster_id
  engine               = "redis"
  engine_version       = var.engine_version
  node_type            = var.node_type
  availability_zone    = var.availability_zone
  port                 = var.port
  num_cache_nodes      = var.num_cache_nodes
  security_group_ids   = [aws_security_group.worker_group_mgmt_one.id,aws_security_group.worker_group_mgmt_two.id,aws_security_group.all_worker_mgmt.id]
  subnet_group_name    = "${aws_elasticache_subnet_group.default.name}"
  parameter_group_name = var.parameter_group_name
  tags = {
    Name = var.name
  }
}

resource "aws_elasticache_subnet_group" "default" {
  name       = "lisa-cache-subnet"
  subnet_ids = module.vpc.private_subnets
}
