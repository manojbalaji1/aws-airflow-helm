printf "\n-----------------------------------------------------\n"
printf "Adding helm repository.......\n"
helm repo add airflow-stable https://airflow-helm.github.io/charts
printf "Added helm repository!!!\n"
printf "\n-----------------------------------------------------\n"
printf "\n-----------------------------------------------------\n"
printf "Updating helm repo.......\n"
helm repo update
printf "\n-----------------------------------------------------\n"
printf "\n-----------------------------------------------------\n"
printf "Setting Environment Variables for helm deployment.........\n"
source set_env.sh
printf "Completed setting Environment Variables for helm deployment!!!\n"
printf "\n-----------------------------------------------------\n"
printf "\n-----------------------------------------------------\n"
printf "Creating kubernetes secret for airflowdb\n"
kubectl apply -f airflow-db-secret.yml
printf "\n-----------------------------------------------------\n"
printf "\n-----------------------------------------------------\n"
printf "Create Storageclass, PV, PVC......\n"
kubectl apply -f efs-pvc.yml
printf "\n-----------------------------------------------------\n"
printf "\n-----------------------------------------------------\n"
printf "Installing airflow on kubernetes cluster.....!!!!\n"
helm install $RELEASE_NAME airflow-stable/airflow --namespace $NAMESPACE --version $CHART_VERSION --values $VALUES_FILE
printf "\n-----------------------------------------------------\n"