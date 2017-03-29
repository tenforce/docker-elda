# Docker-ELDA

This docker deploys the Elda system.

[Elda](https://github.com/epimorphics/elda) is a Java implementation of the Linked Data API, which provides a configurable way to access RDF data using simple RESTful URLs that are translated into queries to a SPARQL endpoint. The API developer (probably you) writes an API spec (in RDF) which specifies how to translate URLs into queries.

## version

The version is 1.3.8

## build the docker

```
git clone --depth 1 https://github.com/tenforce/docker-elda
docker build -t docker-elda .
```

## Running the docker

Let `PWD` be the current directory in which the github repo has been cloned

```
docker run  -p 8080:8080 --name my-elda -v $PWD/data:/data -v $PWD/logs:/logs docker-elda
```