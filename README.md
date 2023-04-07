# zoomforth_circleci_builder

This is the Docker image used to build the Zoomforth environment in CircleCI.

To make updates you will need access to the Zoomforth Dockerhub repository.

```
docker login
docker build -t zoomforth/zoomforth_circleci_builder_2023:latest .
docker push zoomforth/zoomforth_circleci_builder_2023:latest
```
