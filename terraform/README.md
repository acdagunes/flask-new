# Terraform Infrastructure for Flask DevOps

## Prerequisites

- Terraform >= 1.0
- DigitalOcean account
- DigitalOcean API token
- SSH key pair

## Setup

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Edit `terraform.tfvars` with your values:
   - DigitalOcean API token
   - Docker Hub username
   - SSH key path

## Usage
```bash
# Initialize
terraform init

# Plan (preview changes)
terraform plan

# Apply (create infrastructure)
terraform apply

# Destroy (remove infrastructure)
terraform destroy
```

## Outputs

After `terraform apply`, you'll get:
- Droplet IP address
- Application URL
- SSH command

## What Gets Created

- Ubuntu 24.04 droplet
- SSH key uploaded to DO
- Firewall rules (SSH, HTTP, HTTPS)
- Automated application deployment via cloud-init

## Security

- Change `allowed_ssh_ips` in `terraform.tfvars` to your IP only
- Never commit `terraform.tfvars` (contains secrets)
