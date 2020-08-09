variable "aws_access_key" {
    description = "AWS Access Key"
}

variable "aws_secret_key" {
    description = "AWS Secret Key"
}

variable "aws_session_token" {
    description = "AWS Session Token"
}

variable "aws_region" {
    description = "AWS Region"
    default = "us-east-1"
}

variable "key_pair" {
    description = "Key pair used to login to the instance"
}

variable "instance_type" {
    description = "Instance type for the simple instance"
    default = "t3.large"
}

variable "prefix" {
    description = "Unique prefix for naming"
}

variable "organization" {
    description = "Name of the TF organization to provision in"
}

variable "vcs_token" {
    description = "The OAuth token needed to access the repo"
}

variable "owner" {
    description = ""
}

variable "hc_region" {
    description = ""
}

variable "purpose" {
    description = ""
}

variable "ttl" {
    description = ""
}
