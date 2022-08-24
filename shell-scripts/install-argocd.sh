region=ap-northeast-2
cluster_name=dstny-cluster

aws eks update-kubeconfig \
--region $region \
--name $cluster_name

kubectl create ns argocd
kubectl apply -n argocd \
-f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml