# Swagger - Issuer

## Getting Started

### local

Execute: 
```sh
    export SWAGGER_URL=<ip_host>
    bash changeSwagerURL.sh 
``` 

Start the container in `swagger`:

```sh
docker-compose up
```

To access swagger: `http://<ip_host>:3700/swagger/`


### production/ kubernetes enviroment

Create a image and update the enviroment

Kill the services in `kubernetes/swagger`:
```sh
    sudo kubectl delete -f deployment/
```
Start the services in `kubernetes/swagger`:

```sh
    sudo kubectl apply -f deployment/
```

To access swagger: `http://<production_host>/swagger/` 