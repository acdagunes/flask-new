# Flask DevOps Portfolio Project

Production-ready Flask application demonstrating modern DevOps practices: CI/CD automation, containerization, monitoring, and Infrastructure as Code.

## 📊 Live Production Deployment

| Service | URL |
|---------|-----|
| **Application** | http://46.101.163.63 |
| **Prometheus** | http://46.101.163.63:9090 |
| **Grafana** | http://46.101.163.63:3000 |

## 🏗️ Architecture

```
GitHub Push → Actions CI/CD → Docker Build → Docker Hub → DigitalOcean Deploy
                                                              ↓
                                                    Nginx → Flask → Prometheus
                                                              ↓
                                                           Grafana
```

## ✨ Key Features

### Automated CI/CD Pipeline
- GitHub Actions workflow with automated build on push
- Docker Hub registry integration
- SSH deployment to production server
- Health verification after deployment
- Zero-downtime updates
- **Deployment time: <2 minutes**

### Monitoring & Observability
- **Prometheus** — metrics collection (15s intervals)
- **Grafana** — visualization dashboards
- **Node Exporter** — system metrics (CPU, RAM, Disk, Network)
- **cAdvisor** — container-level metrics
- **Flask metrics** — application performance
- 4 data sources actively monitored

### Infrastructure as Code
- **Terraform** configuration for DigitalOcean
- Automated droplet provisioning
- Firewall rules as code
- Cloud-init automation
- Reproducible infrastructure

### Security Implementation
- Non-root Docker containers
- Security headers (X-Frame-Options, CSP, XSS Protection)
- Firewall configuration
- SSH key-based authentication
- Secrets management in CI/CD
- Log rotation

## 🚀 Performance Metrics

| Metric | Value |
|--------|-------|
| Deployment Time | <2 minutes |
| Response Time (p95) | <50ms |
| Docker Image Size | ~150MB |
| Build Time | ~40 seconds |
| Services Running | 6 containers |
| Uptime | 99.9%+ |

## 🛠️ Tech Stack

| Category | Technologies |
|----------|-------------|
| Application | Python, Flask, Gunicorn |
| Containerization | Docker, Docker Compose |
| CI/CD | GitHub Actions |
| Monitoring | Prometheus, Grafana, Node Exporter, cAdvisor |
| Web Server | Nginx (reverse proxy) |
| Cloud | DigitalOcean |
| IaC | Terraform |
| Version Control | Git, GitHub |

## 📁 Project Structure

```
flask-devops/
├── app/
│   ├── __init__.py
│   └── main.py              # Flask application
├── .github/workflows/       # CI/CD pipeline
├── monitoring/              # Prometheus & Grafana configs
├── nginx/
│   └── default.conf         # Nginx configuration
├── terraform/               # Infrastructure as Code
├── docker-compose.yml       # Multi-service orchestration
├── Dockerfile               # Application container
├── wsgi.py                  # WSGI entry point
├── requirements.txt         # Python dependencies
├── Makefile                 # DevOps workflow commands
└── .env.example             # Environment template
```

## 📦 Quick Start

```bash
# Clone repository
git clone https://github.com/acdagunes/flask-new.git
cd flask-new

# Configure environment
cp .env.example .env
# Edit .env with your values

# Deploy locally
docker compose up -d

# Verify
curl http://localhost/health
```

## 🔧 Available Commands

```bash
make help      # Show all available commands
make build     # Build Docker images
make up        # Start services
make down      # Stop services
make logs      # View logs
make test      # Run API tests
make health    # Check health status
make clean     # Clean up everything
```

## 🏥 Health Endpoints

| Endpoint | Description |
|----------|-------------|
| `/health` | Basic health check |
| `/ready` | Readiness probe |
| `/metrics` | Prometheus metrics |
| `/version` | Application version |

## 📈 Project Timeline

| Day | Accomplishments |
|-----|-----------------|
| Day 1 | Application containerization + Docker setup |
| Day 2 | CI/CD pipeline + production deployment |
| Day 3 | Monitoring stack + Terraform IaC |

**Total: Complete DevOps infrastructure in 3 days**

## 🎓 Skills Demonstrated

- Production application deployment
- Container orchestration (Docker Compose)
- CI/CD automation (GitHub Actions)
- Infrastructure monitoring (Prometheus + Grafana)
- System administration (Linux, Ubuntu)
- Cloud deployment (DigitalOcean)
- Infrastructure as Code (Terraform)
- Networking (Nginx reverse proxy, firewall)
- Security best practices
- DevOps methodology

## 📄 License

MIT License

---

**Status:** ✅ Production Ready | 🔄 CI/CD Active | 📊 Monitored | 🔒 Secured