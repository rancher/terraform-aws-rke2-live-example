terraform {
  required_version = ">= 1.5.0, < 1.6"
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 5.43"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.5"
    }
    external = {
      source  = "hashicorp/external"
      version = "2.3.2"
    }
  }
}