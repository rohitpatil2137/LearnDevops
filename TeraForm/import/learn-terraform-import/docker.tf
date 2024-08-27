# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Terraform configuration
import {
  id = "92a71019e14ddd0eae928a0a58a30dae6f685500614a2df2a8f696fba6c1bbb5"
  to = docker_container.web
}
resource "docker_image" "nginx" {
  name         = "nginx:latest"
}
