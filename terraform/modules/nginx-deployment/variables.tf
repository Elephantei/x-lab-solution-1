variable "app-name" {
  type = string

}

variable "image" {
  type = string
}

variable "container-port" {
  type    = string
  default = "80"
}

variable "cpu-limits" {
  type    = string
  default = "0.5"
}

variable "memory-limits" {
  type    = string
  default = "512Mi"
}

variable "cpu-requests" {
  type    = string
  default = "250m"
}

variable "memory-requests" {
  type    = string
  default = "50Mi"
}

variable "replicas" {
  type = string
}
variable "svc-type" {
  type    = string
  default = "NodePort"
}
variable "svc-port" {
  type    = string
  default = "80"

}
variable "svc-node-port" {
  type = string
}
variable "target-port" {
  type    = string
  default = "80"
}

variable "namespace" {
  type = string
}
