output "service_ip" {
  description = "Service IP"
  value       = data.kubernetes_service.service.spec.0.cluster_ip
}

output "ports" {
  description = "Service Ports"
  value       = var.ports
}

# @label "Test Environment Variables"
# @group "test"
variable "test_env" {
  type        = map(string)
  description = "Name and value pairs to set as the environment variables"
  default     = {}
}
# @label "Test Replicas"
# @group "test"
variable "test_replicas" {
  type        = number
  description = "Replicas to deploy"
  default     = 1
}
# @label "test_2"
# @group "test"
variable "test_2" {
  type        = any
  description = "test_2"
}