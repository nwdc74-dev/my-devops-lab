# Secure Cloud Web Deployment (DevSecOps Lab)

## 📌 Project Overview
This project demonstrates a secure, containerized web deployment on an **AWS EC2 (Amazon Linux 2023)** instance. The focus of this lab was to move beyond basic containerization by implementing **Security Hardening** and **Resource Management** principles essential for enterprise IT environments.

## 🛠 Tech Stack
* **Cloud:** AWS (EC2 t3.micro)
* **Containerization:** Docker
* **Security Scanning:** Aqua Security Trivy
* **Base Image:** Alpine Linux (Security Hardened)
* **Scripting:** Bash (Automation)
* **Web Server:** Nginx

## 🛡️ Security Features Implemented
* **Least Privilege Execution:** Reconfigured the Nginx Dockerfile to run as a non-root user, preventing potential container breakout exploits.
* **Vulnerability Mitigation:** Utilized **Trivy** to scan images, successfully remediating 100% of Critical vulnerabilities by migrating to a "thin" Alpine base image.
* **Resource Constraining:** Implemented CPU and Memory limits (256MB RAM / 0.5 CPU) to prevent Denial of Service (DoS) via resource exhaustion.
* **OS Hardening:** Configured Linux Swap space to maintain system stability during heavy security audits.

## 🚀 Deployment & Automation
The project includes a custom automation script (`deploy.sh`) that streamlines the deployment process:
1. Clears legacy containers.
2. Applies resource quotas.
3. Launches the hardened production image.

## 📈 Learning Outcomes
Successfully completed the full **DevSecOps lifecycle**: 
**Plan -> Code -> Build -> Security Scan -> Deploy -> Monitor (Logs).**