# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "92a71019e14ddd0eae928a0a58a30dae6f685500614a2df2a8f696fba6c1bbb5"
resource "docker_container" "web" {
  

  env                                         = []
  image                                       = "docker_image.nginx.image_id"
  name                                        = "hashicorp-learn"
  ports {
    external = 8081
    internal = 80
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
}
