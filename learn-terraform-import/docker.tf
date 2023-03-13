# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Terraform configuration
resource "docker_container" "web" {
    image = "sha256:904b8cb13b932e23230836850610fa45dce9eb0650d5618c2b1487c2a4f577b8"
    name  = "hashicorp-learn"
    env = []

    ports {
        external = 8080
        internal = 80
        ip       = "::"
    }

    ports {
        external = 8080
        internal = 80
    }
}