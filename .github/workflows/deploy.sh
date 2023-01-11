#!/bin/bash
if [[ -n $(docker ps -q -f "name=^flask-demo$") ]]; then
    echo "好"
    docker container stop flask-demo
    docker image pull shenggao/flask-demo:latest
    docker container run -d --rm -p 5000:5000 --name flask-demo shenggao/flask-demo:latest
else
    echo "不好"
    docker image pull shenggao/flask-demo:latest
    docker container run -d --rm -p 5000:5000 --name flask-demo shenggao/flask-demo:latest
fi
