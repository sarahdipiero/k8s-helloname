# k8s-helloname

Requisiti: docker, kind, kubectl

Crea il cluster kind:
```
kind create cluster --config config.yaml
```

Installa Ingress Controller NGINX e verifica che sia attivo:
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
kubectl get pods -n ingress-nginx
```

Esegui i seguenti comandi per applicare i file di configurazione per Kubernetes:
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml
```

Apri il browser all'indirizzo http://localhost:8080/getName?name=tuoNome

Crea il secondo cluster kind:
```
cd interface
kind create cluster --config config-interface.yaml
```

Installa Ingress Controller NGINX e verifica che sia attivo:
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
kubectl get pods -n ingress-nginx
```

Esegui i seguenti comandi per applicare i file di configurazione per Kubernetes:
```
kubectl apply -f deployment-interface.yaml
kubectl apply -f service-interface.yaml
kubectl apply -f ingress-interface.yaml
```

Apri il browser all'indirizzo http://localhost:8081

<img width="1510" alt="helloname" src="https://github.com/sarahdipiero/k8s-helloname/assets/82499117/cc257f9e-8984-44a3-a573-22b105e5b845">


Inserisci il tuo nome e premi il pulsante.

Per verificare che i pod siano tutti in esecuzione, esegui lo script bash:
```
chmod +x bash.sh
./bash.sh
```
