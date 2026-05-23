# DevOps Infrastructure Automation Project

## Overview

This project demonstrates a complete DevOps workflow including application containerization, CI/CD automation, infrastructure provisioning, and cloud cost optimization automation.

The project includes:
- Flask application
- Docker containerization
- GitHub Actions CI/CD
- Terraform infrastructure setup
- Cloud cost janitor automation
- Documentation and reporting

---

## How to run locally

### Clone repository

```bash
git clone https://github.com/Sachin-022005/devops-project.git
cd devops-project
```

### Run Flask application

```bash
python3 devops.py
```

Application runs on:

```text
http://localhost:5000
```

---

## Run Docker Container

### Build image

```bash
docker build -t devops-app .
```

### Run container

```bash
docker run -p 5000:5000 devops-app
```

---

## Terraform Setup

Navigate to terraform directory:

```bash
cd terraform
```

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

---

## Janitor Script

Run janitor automation script:

```bash
python3 janitor/janitor.py
```

---

## Architecture

```text
User
  ↓
Flask Application
  ↓
Docker Container
  ↓
GitHub Repository
  ↓
GitHub Actions CI/CD
  ↓
Terraform Infrastructure
  ↓
Cloud Cost Janitor Automation
```

---

## Decisions & deviations

- Used modular Terraform structure for better organization
- Used Docker for local containerized deployment
- GitHub Actions used for lightweight CI/CD automation
- LocalStack integration faced WSL networking limitations during full apply

---

## Trade-offs

- Infrastructure resources were simplified for local testing
- LocalStack was used instead of real AWS infrastructure
- Some cloud resources were simulated for demonstration purposes

---

## AI usage disclosure

ChatGPT was used for:
- Debugging assistance
- Terraform guidance
- Docker troubleshooting
- Documentation support
- CI/CD workflow guidance

All implementation, testing, setup, and project integration were completed manually.
