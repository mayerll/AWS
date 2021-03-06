variable "cluster_id" {
  description = "Cluster ID you want to use"
  default     = "lisa-ec-cluster"
}

variable "aws_region" {
  description = "Region you want to use"
  default     = "us-west-2"
}

variable "availability_zone" {
  description = "Availability zone you want to use"
  default     = "us-west-2a"
}

variable "port" {
  description = "Port number you want to use"
  default     = 6379
}

variable "engine_version" {
  description = "Redis engine version you want to use"
  default     = "2.8.24"
}
variable "node_type" {
  description = "Node type you want to use"
  default     = "cache.m4.large"
}

variable "num_cache_nodes" {
  description = "The number of cache nodes you want"
  default     = 1
}

variable "security_group_ids" {
  description = "The security_group ids to attach the instance to"
  default = []
}

variable "subnet_group_name" {
  description = "The subnet to launch the instance into"
  default = ""
}

variable "parameter_group_name" {
  default = "default.redis2.8"
}

variable "name" {
  description = "Cluster Name"
  default     = ""
}

variable "alarm_threshold_cpu" {
  description = "Threshold for cpu alarm in %"
  type        = number
  default     = 80
}

variable "alarm_threshold_memory" {
  description = "Memory in percent"
  type        = number
  default     = 80
}

variable "alarm_threshold_evictions" {
  description = "Threshold for evictions alarm"
  type        = number
  default     = 0
}

variable "alarm_threshold_swap" {
  description = "Threshold for swap alarm"
  type        = number
  default     = 419430400 # 40MB, 80% of recommended 50MB limit
}

variable "alarm_sns_topic" {
  description = "SNS Topic used for alarms"
  default     = "arn:aws:sns:us-west-2:202758669767:db_alarms" 
}
