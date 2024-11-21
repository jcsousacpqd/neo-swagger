FROM container-registry.cpqd.com.br/dockerhub/node:18.16.0-alpine

WORKDIR /dist
COPY ./swagger_template.json /swagger_dir
COPY ./changeSwaggerURL.sh /swagger_dir
COPY ./endpoints /swagger_dir/endpoints/
COPY ./schemas /swagger_dir/schemas/


RUN apk add jq
CMD sh -c 'sh /swagger_dir/changeSwaggerURL.sh'
