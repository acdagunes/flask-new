variable "do_token" {
  description = "DigitalOcean API Token"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "fra1"
}

variable "droplet_size" {
  description = "Droplet size"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "allowed_ssh_ips" {
  description = "IP addresses allowed to SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "docker_username" {
  description = "Docker Hub username"
  type        = string
}

variable "docker_image" {
  description = "Docker image name"
  type        = string
  default     = "flask-devops"
}

variable "use_reserved_ip" {
  description = "Use reserved IP address"
  type        = bool
  default     = false
}
