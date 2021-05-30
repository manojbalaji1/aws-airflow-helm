# airflow-kubernetes
to start the installation, the following are required

[local]
- kubectl
- minikube
- helm==3.0.0+

[aws]
- kubectl
- kubectl configured for AWS EKS. Refer to https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html
- helm==3.0.0+

Post the dependencies are installed, can execute start.sh to install and deploy airflow on EKS. The parameters can be changed accordingly in values.yml

