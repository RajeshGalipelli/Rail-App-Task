# Rail-App-Task

# Budget App Deployment (Rails + PostgreSQL)

## 🧰 Tech Stack
- Ruby on Rails (7.0.1)
- PostgreSQL (13)
- Docker & Docker Compose
- Kubernetes (Minikube)
- NGINX Ingress Controller

---

## 🧪 Step-by-Step Setup

### 🔧 Local Docker Compose
```bash
docker-compose up --build
http://localhost:3000

Kubernetes Setup
1. Start Minikube
bash
Copy
Edit
minikube start
minikube addons enable ingress
2. Apply all manifests
bash
Copy
Edit
kubectl apply -f postgres-statefulset.yaml
kubectl apply -f rails-deployment.yaml
kubectl apply -f rails-service.yaml
kubectl apply -f ingress.yaml
3. Map domain
bash
Copy
Edit
echo "$(minikube ip) budget-app.local" | sudo tee -a /etc/hosts
App accessible at: http://budget-app.local



Docker Images Used
Rails App: rajeshgalipelli089/budget-rails-app:latest

PostgreSQL: postgres:13



