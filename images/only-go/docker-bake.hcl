variable "REPO" {
  default = "philippecharriere494"
}

variable "TAG" {
  default = "0.0.5"
}

group "default" {
  targets = ["too-big-image"]
}

target "too-big-image" {
  context = "."
  tags = ["${REPO}/too-big-image:${TAG}"]
}

# docker buildx bake --push --file docker-bake.hcl