# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Terraform configuration
resource "docker_container" "web" {
    image = docker_image.nginx.latest
    name  = "hashicorp-learn"
    env = []

    ports {
        external = 8081
        internal = 80
    }
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
}