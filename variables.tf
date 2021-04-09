
variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "gcp_region_1" {
  type        = string
  description = "GCP Region"
}

# define GCP zone
variable "gcp_zone_1" {
  type        = string
  description = "GCP Zone"
}

variable "app_name" {
  type        = string
  description = "Application Name"
}

variable "container_registry" {
  type        = string
  description = "Container Registry"
}

variable "backend_image_name" {
  type        = string
  description = "Backend Image Name"
}

variable "frontend_image_name" {
  type        = string
  description = "Frontend Image Name"
}