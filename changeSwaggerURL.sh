#!/bin/bash

changeSwaggerURL(){

    jq '.servers[0].url = "http://'$SWAGGER_URL'"' swagger_template.json > swagger1.json 
    jq '.servers[1].url = "https://'$SWAGGER_URL'"' swagger1.json > swagger.json
    rm swagger1.json

    cp -a /swagger_dir/. /swagger/
}
changeSwaggerURL