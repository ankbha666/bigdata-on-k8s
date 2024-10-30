variable "cluster_name" {}

variable "cluster_version" {}

variable "tags" {
  type = map(string)
}

variable "vpc_security_group_ids" {
  type = list(string)
}

variable "subnet_ids" {
  type = list(string)
}

variable "region" {}

variable "token" {}

variable "cluster_endpoint" {}

variable "certificate_authority_data" {}

variable "capacity_type" {
  type        = string
  description = "Capacity type for warm pool instances. Can be either 'ON_DEMAND' or 'SPOT'."
  default     = "ON_DEMAND"
}

variable "instance_type" {
  type        = string
  description = "Instance type for On-Demand instances"
  default     = "t3a.large"
}

variable "instance_types" {
  type        = list(string)
  description = "List of instance types for Spot instances"
  default     = ["t3a.large", "t3.large", "m5.large", "m5a.large"]
}
