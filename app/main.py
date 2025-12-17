from flask import Flask, jsonify
import os
import socket
import logging

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

def create_app():
    app = Flask(__name__)
    
    logger.info(f"Starting Flask app version {os.getenv('APP_VERSION', 'dev')}")
    
    @app.route("/")
    def index():
        return jsonify({
            "message": "🚀 Production Flask DevOps App",
            "version": os.getenv("APP_VERSION", "dev"),
            "environment": os.getenv("FLASK_ENV", "production"),
            "status": "✅ CI/CD Pipeline Active"
        })
    
    @app.route("/health")
    def health():
        return jsonify({
            "status": "healthy",
            "service": "flask-devops",
            "version": os.getenv("APP_VERSION", "dev")
        }), 200
    
    @app.route("/ready")
    def ready():
        return jsonify({
            "status": "ready"
        }), 200
    
    @app.route("/version")
    def version():
        return jsonify({
            "version": os.getenv("APP_VERSION", "dev"),
            "hostname": socket.gethostname(),
            "workers": os.getenv("GUNICORN_WORKERS", "unknown")
        })
    
    @app.route("/metrics")
    def metrics():
        return jsonify({
            "app": "flask-devops",
            "version": os.getenv("APP_VERSION", "dev"),
            "uptime": "ok"
        })
    
    @app.errorhandler(404)
    def not_found(error):
        return jsonify({
            "error": "Not Found",
            "message": "The requested resource was not found"
        }), 404
    
    @app.errorhandler(500)
    def internal_error(error):
        logger.error(f"Internal server error: {error}")
        return jsonify({
            "error": "Internal Server Error",
            "message": "An unexpected error occurred"
        }), 500
    
    return app
