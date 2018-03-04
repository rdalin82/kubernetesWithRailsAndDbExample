system 'minikube start'
system 'eval $(minikube docker-env)'
system 'kubectl create -f db-pod.yml'
system 'kubectl create -f railsapp-secrets.yml'
system 'kubectl create -f db-service.yml'
system 'kubectl create -f web-service.yml'
system 'kubectl create -f web-controller.yml'
system 'kbc create -f web-deployment.yml'
system 'kbc expose deployment web --port=3000 --targetPort=3000'
system 'kubectl create -f rails-create-migrate-job.yml'


system 'kubectl get rc'
system 'kubectl get pods'
system 'kubectl get services'
system 'kubectl get nodes'
system 'kubectl get deployments'

puts " run `minikube service web` when ready to view"
puts 'and run curl $(minikube service web --url)'
