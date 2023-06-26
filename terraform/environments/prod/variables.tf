variable "host" {
  type        = string
  description = "The host address or URL for the client connection."
}

variable "client_cert" {
  type        = string
  description = "The client certificate used for authentication."
}

variable "client_key" {
  type        = string
  description = "The client private key used for authentication."
}

variable "cluster_cert" {
  type        = string
  description = "The certificate of the cluster or server for secure communication."
}
