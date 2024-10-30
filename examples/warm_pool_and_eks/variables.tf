variable "region" {}

variable "cluster_name" {}

variable "cluster_version" {}

variable "tags" {
  type = map(string)
}

variable "pod_identity_type" {
  validation {
    condition     = var.pod_identity_type == "IRSA" || var.pod_identity_type == "EKS_POD_IDENTITY"
    error_message = "The pod_identity_type must be either 'IRSA' or 'EKS_POD_IDENTITY'."
  }
}

variable "warm_pool_capacity_type" {
  type        = string
  description = "Capacity type for warm pool instances. Can be either 'ON_DEMAND' or 'SPOT'."
  default     = "ON_DEMAND"
}

variable "warm_pool_instance_type" {
  type        = string
  description = "Instance type for On-Demand instances in warm pool"
  default     = "t3a.large"
}

variable "warm_pool_instance_types" {
  type        = list(string)
  description = "List of instance types for Spot instances in warm pool"
  default     = ["t3a.large", "t3.large", "m5.large", "m5a.large"]
}