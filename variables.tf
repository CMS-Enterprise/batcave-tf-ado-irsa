
variable "iam_path" {
  description = "Path of IAM role"
  type        = string
  default     = ""
}

variable "permissions_boundary" {
  description = "Permissions boundary ARN to use for IAM role"
  type        = string
}
variable "oidc_provider_arn" {
  type = string
}
variable "cluster_name" {
  type = string
}
variable "ado_microservice_bucket_arns" {
  type        = list(string)
  description = "buckets for ado_microservice"
}
variable "ado_microservice_app_name" {
  type    = string
  default = "app_name"
}
variable "ado_microservice_service_accounts" {
  type    = list(string)
  default = ["namespace:ado_microservice"]
}
