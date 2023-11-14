packer {
  required_plugins {
    ansible = {
      source  = "github.com/hashicorp/ansible"
      version = "~> 1"
    }
    docker = {
      source  = "github.com/hashicorp/docker"
      version = "~> 1"
    }
  }
}

source "docker" "autogenerated_1" {
  commit      = true
  export_path = "output-docker-image.tar"
  image       = "ubuntu:latest"
}

build {
  sources = ["source.docker.autogenerated_1"]

  provisioner "ansible" {
    playbook_file = "PlaybookAnsible.yml"
  }

}
