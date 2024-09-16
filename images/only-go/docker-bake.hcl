variable "REPO" {
  default = "philippecharriere494"
}

variable "TAG" {
  default = "0.0.0"
}

group "default" {
  targets = ["only-go"]
}

target "only-go" {
  context = "."
  tags = ["${REPO}/only-go:${TAG}"]
  platforms = [
    "linux/amd64",
  ]
}

# docker buildx bake --push --file docker-bake.hcl