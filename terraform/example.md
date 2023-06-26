## Adding another instance

To add another deployment using the module call you provided, you can simply create a new module instance with different configuration values. Here's an example:


```
module "nginx-deployment-prod" {
  source = "../../modules/nginx-deployment"

  namespace      = "prod"
  app-name       = "ProdNginx"
  replicas       = "3"
  image          = "nginx:1.19"
  container-port = "8080"
  svc-node-port  = "30202"
}
```

The above code creates a new module instance named "nginx-deployment-prod" using the module called "nginx-deployment" located at the path "../../modules/nginx-deployment".

The configuration values are provided for the new deployment instance:

- `namespace` is set to "prod", indicating that the deployment should be created in the "prod" namespace.
- `app-name` is set to "ProdNginx", defining the name of the application as "ProdNginx".
replicas is set to "3", specifying that three replicas of the application should be deployed.
- `image` is set to "nginx:1.19", specifying the Docker image for the nginx application with version 1.19.
- `container-port` is set to "8080", indicating that the application container should listen on port 8080.
- `svc-node-port` is set to "30202", specifying the NodePort where the service should be accessible on the host machine.

By adding this code, a new deployment of the nginx application will be created in the "prod" namespace with the provided configuration values. You can adjust the configuration values as per your requirements for each deployment.
