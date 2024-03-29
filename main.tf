terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.217.0"
    }
  }
}

provider "alicloud" {
  	region  = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}


variable "region" {
  type = string
  default = "ap-southeast-1"

}

  variable "access_key" {
  type      = string
  sensitive = true
}

variable "secret_key" {
  type      = string
  sensitive = true

}

resource "alicloud_vpc" "vpc" {
  vpc_name   = "tf_test_jla"
  cidr_block = "172.16.0.0/12"
}
