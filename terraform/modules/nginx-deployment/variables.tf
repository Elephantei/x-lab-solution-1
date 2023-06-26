variable "app-name" {
  type        = string
  description = "The name of the application."
}

variable "image" {
  type        = string
  description = "The name or location of the container image for the application."
}

variable "container-port" {
  type        = string
  default     = "80"
  description = "The port number on which the application container listens for incoming requests."
}

variable "cpu-limits" {
  type        = string
  default     = "0.5"
  description = "The CPU resource limit for the application container."
}

variable "memory-limits" {
  type        = string
  default     = "512Mi"
  description = "The memory resource limit for the application container."
}

variable "cpu-requests" {
  type        = string
  default     = "250m"
  description = "The CPU resource request for the application container."
}

variable "memory-requests" {
  type        = string
  default     = "50Mi"
  description = "The memory resource request for the application container."
}

variable "replicas" {
  type        = string
  description = "The number of replicas (instances) of the application to deploy."
}

variable "svc-type" {
  type        = string
  default     = "NodePort"
  description = "The service type for the application, specifying how the application should be exposed externally."
}

variable "svc-port" {
  type        = string
  default     = "80"
  description = "The port number on which the service should be exposed."
}

variable "svc-node-port" {
  type        = string
  description = "The port number on the host machine where the service should be accessible when using the NodePort service type."
}

variable "target-port" {
  type        = string
  default     = "80"
  description = "The target port number to which the incoming requests should be forwarded within the application container."
}

variable "namespace" {
  type        = string
  description = "The Kubernetes namespace in which the application should be deployed."
}
