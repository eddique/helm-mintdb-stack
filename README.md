<p align="center">
    <img width="400" src="./img/logo-light.png#gh-light-mode-only" alt="mintDB Logo">
    <img width="400" src="./img/logo.svg#gh-dark-mode-only" alt="mintDB Logo">
</p>
<h2 align="center">Helm chart An Open Source Vector Database</h2>
<p align="center">
    <a href="https://github.com/eddique/helm-mintdb-stack/releases/latest"><img src="https://img.shields.io/github/v/release/eddique/helm-mintdb-stack.svg"></a>
    <a href="https://img.shields.io/docker/pulls/eddique/mintdb-stack"><img src="https://img.shields.io/docker/pulls/eddique/mintdb-stack"></a>
    <a href="https://img.shields.io/badge/built_with-Rust-dca282.svg"><img src="https://img.shields.io/badge/built_with-Rust-dca282.svg"></a>
    <a href="https://www.linkedin.com/in/eric-rodriguez-3a402811b/"><img src="https://img.shields.io/badge/linkedIn-connect-4777AF"></a>
</p>

# Installation

To add the repo:

```sh
helm repo add mintdb https://eddique.github.io/helm-mintdb-stack/
```

To install the chart run:

```sh
helm install mintdb-stack mintdb/mintdb-stack
```

# Usage

To connect to the mintdb CLI run:

```sh
kubectl get pods -o name | grep mintdb-stack
```

Copy the name of the pod (E.g. mintdb-stack-77d2874849d-3j5s2)

```sh
kubectl exec -it <POD_NAME> -- repl
```