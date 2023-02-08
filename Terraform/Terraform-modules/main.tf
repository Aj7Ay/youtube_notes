provider "aws" {
  region  = var.region
  profile = var.profile
}

module "webserver-1" {
  source = ".//module-1"
}

module "webserver-2" {
  source = ".//module-2"
}
