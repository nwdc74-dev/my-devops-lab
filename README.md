# Secure Cloud Web Deployment (DevSecOps Lab)

## 📌 Project Overview
This project demonstrates the deployment, configuration, and proactive security hardening of a containerized web environment hosted on an **AWS EC2 (Amazon Linux 2023)** instance. The primary goal was to move beyond basic containerization by implementing enterprise-grade security hardening, resource management, and automated system administration.

## 🛠️ Technology Stack & Tools
* **Cloud Infrastructure:** AWS (EC2 t3.micro)
* **Containerization & Web:** Docker, Nginx, Alpine Linux
* **Security & Auditing:** Aqua Security Trivy
* **Automation & Scripting:** Bash (`deploy.sh`), `cronie`
* **Linux CLI Utilities:** `chmod`, `grep`, `tail`

## 🚀 Key Implementations & Problem Solving

### 1. Vulnerability Mitigation & Base Image Hardening
Security cannot be an afterthought. I integrated **Trivy** to scan container images, successfully remediating 100% of critical vulnerabilities by migrating to a "thin," security-hardened Alpine Linux base image.

### 2. Least Privilege & Access Control
Enforced the Principle of Least Privilege across both the container and the host filesystem:
* Reconfigured the Nginx Dockerfile to run as a non-root user, mitigating potential container breakout exploits.
* Strategically applied **`chmod`** commands to secure sensitive host configuration files and directories against unauthorized local access.

### 3. Resource Constraining & System Stability
To prevent Denial of Service (DoS) attacks via resource exhaustion, I implemented strict CPU and Memory limits (256MB RAM / 0.5 CPU) on the containers. Additionally, I configured Linux Swap space on the EC2 instance to maintain host stability during heavy security audits.

### 4. System Automation & Real-Time Monitoring
Eliminated repetitive administrative toil by implementing a custom automation script (`deploy.sh`) to clear legacy containers, apply quotas, and launch the hardened production image. 
* Configured **`cronie`** to schedule routine maintenance and automated background tasks.
* Utilized **`tail`** to monitor live server logs, piping the output to **`grep`** to instantly filter for specific access events and security anomalies.

## 📈 Learning Outcomes
Successfully executed the full **DevSecOps lifecycle** (Plan -> Code -> Build -> Security Scan -> Deploy -> Monitor). This project bridged the gap between theoretical cloud security and practical Linux administration, turning tools like `grep`, `chmod`, and `cron` into mission-critical utilities for maintaining a secure environment.

---
*Created by Dorian Coley - Aspiring Junior DevOps Engineer / System Administrator*
