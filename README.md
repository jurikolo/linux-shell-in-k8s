# linux-shell-in-k8s

Ever need to run specific Linux shell tools inside K8S cluster?
This repository solves this issue. Based on Fedora distro,
install tools you like in `Dockerfile`, build the container and run in K8S cluster.

```bash
kubectl run --rm -it mypod --image=jurikolo/linux-shell-in-k8s:0.0.4 -- /bin/bash
```