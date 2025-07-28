# 🚀 Flask CI/CD Pipeline with GitHub Actions and AWS EC2

This project demonstrates how to set up a complete CI/CD pipeline for a Flask application using **GitHub Actions**, **Docker**, **Terraform**, and **AWS EC2**. It automates testing, containerization, image pushing, and deployment to an EC2 instance every time you push to the `main` branch.

---

## 🧰 Tech Stack

- **Backend:** Flask (Python)
- **Frontend:** HTML, CSS (static)
- **CI/CD:** GitHub Actions
- **Containerization:** Docker, Docker Compose
- **Infrastructure:** Terraform
- **Deployment Target:** AWS EC2 (Ubuntu)
- **Web Server:** Gunicorn
- **Reverse Proxy (optional):** Nginx

---

## 🚀 Key Features

- ✅ Automatic deployment on every push to `main` branch  
- ✅ Dockerized Flask app with Gunicorn WSGI server  
- ✅ Uses Docker Compose for local orchestration  
- ✅ Infrastructure managed via Terraform  
- ✅ GitHub Actions handles testing and deployment steps  
- ✅ SSH-based EC2 deployment through GitHub secrets  

---

## 🧑‍💻 Prerequisites

Before running or deploying, ensure the following:

- AWS EC2 Ubuntu instance (Docker, Python3, and Git installed)
- SSH access via `.pem` file (converted to `.ppk` if using PuTTY)
- Flask app (`app.py`) already working locally
- `requirements.txt` with all dependencies
- GitHub repository created and connected
- DockerHub account created (e.g., `animesha`)
- GitHub secrets set:
  - `EC2_PUBLIC_IP`
  - `EC2_USER` (e.g., `ubuntu`)
  - `EC2_KEY` (private key as string)
  - `DOCKER_USERNAME`
  - `DOCKER_PASSWORD`

---

## 🖥️ How to Run Locally

``bash
# Clone the repo
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>

# Create virtual environment
python3 -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`

# Install dependencies
pip install -r requirements.txt

# Run the Flask app
python app.py<img width="1230" height="588" alt="Screenshot 2025-07-28 213344" src="https://github.com/user-attachments/assets/a468995e-f467-4c86-9364-421b112310cb" /><img width="1084" height="9<img width="1911" height="957" alt="Screenshot 2025-07-28 220725" src="https://github.com/user-attachments/assets/cfc011ce-a8f2-49f7-8975-0be3e2e9ce9a" />
65" alt=<img width="1918" height="777" alt="Screenshot 2025-07-28 220222" src="https://github.com/user-attachments/assets/ca4d5954-df1d-4c1e-abbf-73e4eb1c6da7" />
"Screenshot 2025-07-28 213447" src="https://github.com/user-attachments/assets/5e388344-fd8f-4cb7-9136-7239f313c4aa" />


<img width="1919" height="985" alt="Screenshot 2025-07-28 213<img width="1424" height="909" alt="Screenshot 2025-07-28 213249" src="https://github.com/user-attachments/assets/c15544e2-4183-4d51-80da-866234f12b2c" />
230" src="https://github.com/user-attachments/assets/7863ac5e-1636-478e-843a-34a3065e64f5" />



# Screenshots

