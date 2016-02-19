kubectl run php-apache --image=gcr.io/google_containers/hpa-example --requests=cpu=200m
kubectl expose rc php-apache --port=80 --type=LoadBalancer
kubectl describe services php-apache | grep "LoadBalancer Ingress" | awk '{print $3}'
curl $(kubectl describe services php-apache | grep "LoadBalancer Ingress" | awk '{print $3}')


