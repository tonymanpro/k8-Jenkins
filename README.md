# HTTPS Kubernetes
- minikube dashboard
- minikube service hello-node

## Enable Ingress
- kubectl addons enable ingress

## Apply Ingress file 
- kubectl apply -f ingress.yml


## Expose deplyment
- kubectl deployment nginx --port 80

## Add domain to the host config
- echo "$(minikube ip) example.com" | sudo tee -a /etc/hosts
- cat /etc/hosts | tail -n 1


## Create openssl
- openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout tls.key -out tls.crt -subj "/CN=example.com" -days 365


## create secret
- kubectl create secret tls example-com-tls --cert=tls.crt --key=tls.key


##  Apply the tls atribute to ingress with the secret
  tls:
    - secretName: example-com-tls
      hosts:
      - example.com


## Fuentes
https://cloud.google.com/load-balancing/docs/https/
https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer
https://kubernetes.io/docs/concepts/services-networking/ingress/
https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer# k8-Jenkins
