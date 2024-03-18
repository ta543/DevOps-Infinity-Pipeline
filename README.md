# 🚀 Infinity Pipeline 🚀

This project showcases an advanced DevOps pipeline, utilizing GitHub Actions for Continuous Integration (CI), Continuous Deployment (CD), security scanning, and monitoring. It features infrastructure as code (IaC) practices with Terraform, configuration management with Ansible, and a containerized Python Flask application, aiming to demonstrate best practices in a DevOps workflow.

## 📂 Project Structure

- `.github/workflows/`: CI/CD, security, and monitoring workflows.
- `infrastructure/`: Contains Terraform and Ansible configurations for provisioning and configuring cloud resources.
  - `terraform/`: Terraform files for cloud resource provisioning.
  - `ansible/`: Ansible playbooks for server configuration.
- `src/`: The application source code and Dockerfile.
  - `app/`: Flask application code.
  - `tests/`: Application unit tests.
  - `Dockerfile`: Container configuration.
- `scripts/`: Scripts for deployment and environment setup.
- `README.md`: Documentation for the project.

## 📋 Prerequisites

- **Docker** 🐳 and **Docker Compose** for running the application in containers.
- **Python** 🐍 (version 3.8 or newer) and **Pip** for running the Flask application.
- **Terraform** 🌍 and **Ansible** 🛠 for managing infrastructure.

## 🛠 Setup

Clone the repository and run the following script to set up your local environment:

```bash
./scripts/setup_environment.sh
```

# 📦 Installation

This script will install the necessary Python dependencies from `requirements.txt`.

## 🏃 Running the Application Locally

To run the application in a Docker container, execute the following command:

```bash
docker-compose up --build
```

# Application Access :rocket:

The application will be accessible at [http://localhost:5000](http://localhost:5000).

## 🚀 Deploying

Ensure you have configured your cloud provider credentials before running the deployment script. To deploy the application, execute:

```bash
./scripts/deploy.sh
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

