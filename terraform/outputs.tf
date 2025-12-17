output "droplet_ip" {
  description = "Public IP address of the droplet"
  value       = digitalocean_droplet.flask_app.ipv4_address
}

output "droplet_id" {
  description = "ID of the droplet"
  value       = digitalocean_droplet.flask_app.id
}

output "droplet_name" {
  description = "Name of the droplet"
  value       = digitalocean_droplet.flask_app.name
}

output "application_url" {
  description = "Application URL"
  value       = "http://${digitalocean_droplet.flask_app.ipv4_address}"
}

output "ssh_command" {
  description = "SSH command to connect"
  value       = "ssh root@${digitalocean_droplet.flask_app.ipv4_address}"
}
