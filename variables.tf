variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "pool_id" {
  type        = string
  description = "Workload Identity Pool ID"
}

variable "provider_id" {
  type        = string
  description = "Workload Identity Pool Provider id"
}

variable "sa_name" {
  type        = string
  description = "Service Account resource name for reg-suit bucket access in github actions"
}

variable "sa_email" {
  type        = string
  description = "Service Account email for reg-suit bucket access in github actions"
}
