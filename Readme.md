# kubectl

<img src="https://github.com/kubernetes/kubernetes/raw/master/logo/logo.png" width="100">


---
Kubernetes, also known as K8s, is an open source system for managing [containerized applications]
across multiple hosts. It provides basic mechanisms for the deployment, maintenance,
and scaling of applications.


GitHub Action for interacting with kubectl ([k8s](https://kubernetes.io))



## Usage
To use kubectl put this step into your workflow:


```yaml
- uses: cube-root/kubectl
  env:
    KUBE_CONFIG: ${{ secrets.KUBE_CONFIG }}
  run: |
    kubectl get pods && kubectl get deploy
```


KUBE_CONFIG is the base64 of config file as follows. To create the file use the [reference](https://github.com/abhisawesome/kubernetes-authentication)


```yaml
apiVersion: v1
current-context: {context-name}
kind: Config
clusters:
- cluster:
    certificate-authority-data: {cluster-ca}
    server: {server-dns}
  name: {cluster-name}
contexts:
- context:
    cluster: {cluster-name}
    user: {user-name}
  name: {context-name}

users:
- name: {user-name}
  user:
    token: {secret-token}
```
