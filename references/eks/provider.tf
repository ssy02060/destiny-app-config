provider "aws" {
  region = "ap-northeast-2"
}
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
