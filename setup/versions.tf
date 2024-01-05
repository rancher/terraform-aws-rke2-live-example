terraform {
  required_version = ">= 1.5.0, < 1.6"
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 5.43"
    }
    age = {
      source  = "clementblaise/age"
      version = ">= 0.1.1"
    }
    sodium = {
      source  = "ijcd/sodium"
      version = "0.0.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.5"
    }
  }
}