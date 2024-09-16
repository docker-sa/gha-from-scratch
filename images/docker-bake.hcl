variable "REPO" {
  default = "philippecharriere494"
}

variable "TAG" {
  default = "0.0.4"
}

group "default" {
  targets = ["too-big-image"]
}

target "too-big-image" {
  context = "."
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
  tags = ["${REPO}/too-big-image:${TAG}"]
  args = {
    GO_VERSION = "1.23.1"
    NODE_VERSION = "22.0.0"
  }
}

# docker buildx bake --push --file docker-bake.hcl