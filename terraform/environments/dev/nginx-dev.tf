module "nginx-deployment-dev" {
  source = "../../modules/nginx-deployment"

  namespace      = "dev"
  app-name       = "DevNginx"
  replicas       = "2"
  image          = "nginx"
  container-port = "80"
  svc-node-port  = "30201"

}

provider "kubernetes" {
  host = var.host

  client_certificate     = base64decode(var.client_cert)
  client_key             = base64decode(var.client_key)
  cluster_ca_certificate = base64decode(var.cluster_cert)
}
