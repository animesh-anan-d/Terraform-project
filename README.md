# 🛒 Multi-Service Node.js E-commerce App Deployment with Terraform & Docker

This project deploys a multi-service Node.js-based E-commerce application on AWS using Terraform and Docker. It includes 4 backend services (`user`, `products`, `orders`, `cart`) and 1 frontend service. Each service is containerized with Docker and hosted on EC2 instances provisioned via Terraform.

## 📁 Project Structure

ecommerce-app/
├── services/
│ ├── user/
│ ├── products/
│ ├── orders/
│ ├── cart/
│ └── frontend/
├── Dockerfiles (inside each service)
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
└── README.md


## ⚙️ 1. Application Setup (Manual)

### A. Dockerfile Example (for all 5 services)

Each service has its own `Dockerfile`:
---Dockerfile
FROM node:18
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3001  # Change for each service: 3002, 3003, etc.
CMD ["node", "index.js"]

🌐 2. Infrastructure Setup with Terraform
A. Terraform Components
VPC with 1 public subnet

EC2 Instance (Ubuntu 22.04)

Security Groups:

Port 3000 for frontend (HTTP)

Ports 3001–3004 for backend internal communication

B. User Data Script (installs Docker & runs containers)
#!/bin/bash
apt-get update -y
apt-get install -y docker.io
docker pull your-dockerhub/user-service
docker pull your-dockerhub/products-service
docker pull your-dockerhub/orders-service
docker pull your-dockerhub/cart-service
docker pull your-dockerhub/frontend-service
docker run -d -p 3001:3001 your-dockerhub/user-service
docker run -d -p 3002:3002 your-dockerhub/products-service
docker run -d -p 3003:3003 your-dockerhub/orders-service
docker run -d -p 3004:3004 your-dockerhub/cart-service
docker run -d -p 3000:3000 your-dockerhub/frontend-service

C. Terraform Commands
bash
Copy
Edit
cd terraform/
terraform init
terraform plan
terraform apply

🚀 3. Deployment Output
Once terraform apply completes:

Access frontend via:

bash
Copy
Edit
terraform output frontend_public_ip
# OR manually check the EC2 Public IP

📌 Sample Output (Expected)
makefile
Copy
Edit
Apply complete!
Outputs:
frontend_public_ip = "http://13.233.123.45:3000"
