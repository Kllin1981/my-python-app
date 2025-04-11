terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "flask_image" {
  name = "my-python-app"
  build {
    context    = path.module # 指向目前資料夾
    dockerfile = "${path.module}/Dockerfile"
  }
}

resource "docker_container" "flask_container" {
  name  = "flask-container"
  image = docker_image.flask_image.name

  ports {
    internal = 5000
    external = 5000
  }
}
