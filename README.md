Flask DevOps Project
Production-ready Flask application with Docker, Nginx reverse proxy, and CI/CD pipeline.

🏗️ Architecture
Client → Nginx (Port 80) → Flask App (Gunicorn) → Application Logic
🚀 Quick Start
Prerequisites
Docker & Docker Compose
Make (optional, for convenience)
Running the Application
bash
# Using Make
make build
make up
make test

# Or using Docker Compose directly
docker compose build
docker compose up -d
docker compose ps
Accessing the Application
Main endpoint: http://localhost/
Health check: http://localhost/health
Readiness probe: http://localhost/ready
Version info: http://localhost/version
Metrics: http://localhost/metrics
📁 Project Structure
flask-devops/
├── app/
│   ├── __init__.py
│   └── main.py          # Flask application
├── nginx/
│   └── default.conf     # Nginx configuration
├── docker-compose.yml   # Multi-service orchestration
├── Dockerfile           # Application container
├── wsgi.py             # WSGI entry point
├── requirements.txt     # Python dependencies
├── .env                # Environment variables
├── .dockerignore       # Docker build exclusions
├── .gitignore          # Git exclusions
└── Makefile            # DevOps workflow commands
🔧 Configuration
Environment variables can be configured in .env:

bash
APP_VERSION=1.0.0
FLASK_ENV=production
GUNICORN_WORKERS=3
GUNICORN_TIMEOUT=60
NGINX_PORT=80
🛠️ Available Commands
bash
make help          # Show all available commands
make build         # Build Docker images
make up            # Start services
make down          # Stop services
make logs          # View logs
make test          # Run API tests
make health        # Check health status
make clean         # Clean up everything
make shell         # Open shell in Flask container
🏥 Health Checks
The application includes multiple health check endpoints:

/health - Basic health check
/ready - Readiness probe (for orchestrators)
/metrics - Basic metrics endpoint
🔒 Security Features
Non-root user in Docker container
Security headers (X-Frame-Options, X-Content-Type-Options, etc.)
Request size limits
Proper timeout configurations
Log rotation
📊 Monitoring
Application logs: make logs-flask
Nginx logs: make logs-nginx
Nginx status: http://localhost/nginx_status
🚢 Deployment
This application is designed for easy deployment to:

DigitalOcean
AWS EC2
Any Docker-capable environment
📝 Development
To run in development mode:

bash
make dev
🧪 Testing
bash
make test
📦 CI/CD
GitHub Actions workflow included for automated:

Building
Testing
Deployment
📄 License
MIT License

👤 Author
DevOps Engineer

Status: Production-Ready ✅

