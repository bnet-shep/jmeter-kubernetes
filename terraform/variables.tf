variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "node_size" {
  description = "EC2 Instance type to use for nodes"
  type        = string
  default     = "m3.xlarge"
}
