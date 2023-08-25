pipeline {
  agent any
  stages {
    stage('Create cluster kind') {
      steps {
        sh "kind create cluster --config config.yaml"
      }
    }
    stage('Install the NGINX Ingress controller') {
      steps {
        sh "kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml"
        sh "kubectl get pods -n ingress-nginx"
      }
    }
    stage('Apply Kubernetes Files') {
      steps {
          sh 'kubectl apply -f deployment.yaml'
          sh 'kubectl apply -f service.yaml'
          sh 'kubectl apply -f ingress.yaml'
      }
  }
}
post {
    success {
      slackSend(message: "Pipeline is successfully completed.")
    }
    failure {
      slackSend(message: "Pipeline failed. Please check the logs.")
    }
}
}