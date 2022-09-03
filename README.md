
# Run build application in Docker

Execute os comandos:

```bash
$ docker build -t wagnercastro/k8s-go-lang:latest .  --no-cache
$ docker run --rm --name k8s-go-lang -p 3090:3090 wagnercastro/k8s-go-lang:latest
```

# Run Kind (Kubernets)

Execute os comandos:

```bash
$ kind delete cluster --name cluster-dev-ops
$ kind create cluster --name cluster-dev-ops --config=k8s/kind.yaml
$ kubectl apply -f k8s/deployment.yaml
$ kubectl apply -f k8s/service.yaml
$ kubectl port-forward service/goserver-service 3091:3090


$ kubectl get pods
$ kubectl get services
$ kubectl delete pod name-pode
```
