system 'minikube start'
system 'kubectl create -f db-pod.yml'
system 'kubectl get pods'
system 'kubectl create -f db-service.yml'
system 'kubectl create -f web-controller.yml'
system 'kubectl get rc' #controller
system 'kubectl get pods'
system 'kubectl create -f web-service.yml'
system 'kubectl get services'
system 'kubectl get nodes'

puts " run `minikube service web` when ready to view"

# when done
