variable "REPO" {
  default = "philippecharriere494"
}

variable "TAG" {
  default = "0.0.0"
}

group "default" {
  targets = ["only-node-js"]
}

target "only-node-js" {
  context = "."
  tags = ["${REPO}/only-node-js:${TAG}"]
  platforms = [
    "linux/amd64",
  ]
}

# docker buildx bake --push --file docker-bake.hcl