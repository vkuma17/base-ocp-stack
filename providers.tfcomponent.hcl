required_providers {
  ibm = {
    source  = "ibm-cloud/ibm"
    version = ">= 2.3.0, < 3.0.0"
  }
  null = {
    source  = "hashicorp/null"
    version = ">= 3.2.1, < 4.0.0"
  }
  kubernetes = {
    source  = "hashicorp/kubernetes"
    version = ">= 3.0.0, < 4.0.0"
  }
  time = {
    source  = "hashicorp/time"
    version = ">= 0.9.1, < 1.0.0"
  }
  external = {
    source  = "hashicorp/external"
    version = ">= 2.3.5, < 3.0.0"
  }
  random = {
    source  = "hashicorp/random"
    version = ">= 3.6.0, < 4.0.0"
  }
}

provider "terraform" "this" {
  config {}
}

provider "ibm" "this" {
  config {
    ibmcloud_api_key = var.ibmcloud_api_key # pragma: allowlist secret
    region           = var.region
  }
}

provider "null" "this" {
  config {}
}

provider "kubernetes" "this" {
  config {}
}

provider "time" "this" {
  config {}
}

provider "external" "this" {
  config {}
}

provider "random" "this" {
  config {}
}
