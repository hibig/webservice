# @label "Image Name"
# @group ""
variable "image" {
  type        = string
  description = "Docker image name"
}
# @label "test_1"
# @group ""
variable "test_1" {
  type        = dynamic
  description = "Docker image name"
}
# @label "Ports"
# @group ""
variable "ports" {
  type        = list(number)
  description = "Service ports to expose"
  default     = [80]
}
# @label "Environment Variables"
# @group ""
variable "env" {
  type        = map(string)
  description = "Name and value pairs to set as the environment variables"
  default     = {}
}
# @label "Replicas"
# @group ""
variable "replicas" {
  type        = number
  description = "Replicas to deploy"
  default     = 1
}
# @group ""
# @label "CPU Request"
variable "request_cpu" {
  type        = string
  description = "CPU request. e.g. 0.5, 1, 2"
  default     = "0.1"
}
# @group ""
# @label "Memory Request"
variable "request_memory" {
  type        = string
  description = "Memory request. e.g. 128Mi, 512Mi, 1Gi, 2Gi, 4Gi"
  default     = "128Mi"
}
# @group ""
# @label "CPU Limit"
variable "limit_cpu" {
  type        = string
  description = "CPU limit. e.g. 0.5, 1, 2"
  default     = ""
}
# @group ""
# @label "Memory Limit"
variable "limit_memory" {
  type        = string
  description = "Memory limit. e.g. 128Mi, 512Mi, 1Gi, 2Gi, 4Gi"
  default     = ""
}
# @label "Namespace"
# @group ""
variable "namespace" {
  type        = string
  description = "Namespace to deploy. Auto-generated if empty."
  default     = ""
}
# @label "Deployment Name"
# @group ""
variable "name" {
  type        = string
  description = "Name of the deployment resource. Auto-generated if empty."
  default     = ""
}
# @hidden
variable "walrus_metadata_service_name" {
  type        = string
  description = "Walrus metadata service name."
  default     = ""
}
# @hidden
variable "walrus_metadata_namespace_name" {
  type        = string
  description = "Walrus metadata namespace name."
  default     = ""
}
