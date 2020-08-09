provider "tfe" { }

resource "random_integer" "wkspid" {
    keepers = {
        uuid = uuid()
    }
    min = 100000
    max = 199999
}

resource "tfe_workspace" "workspace" {
    name = "HC${random_integer.wkspid.result}"
    organization = var.organization
    auto_apply = false
    vcs_repo {
        identifier = "kevincloud/terraform-simple-instance"
        oauth_token_id = var.vcs_token
    }
}

resource "tfe_variable" "aws_access_key" {
    key = "aws_access_key"
    value = var.aws_access_key
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "aws_secret_key" {
    key = "aws_secret_key"
    value = var.aws_secret_key
    category = "terraform"
    sensitive = true
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "aws_session_token" {
    key = "aws_session_token"
    value = var.aws_session_token
    category = "terraform"
    sensitive = true
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "aws_region" {
    key = "aws_region"
    value = var.aws_region
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "key_pair" {
    key = "key_pair"
    value = var.key_pair
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "instance_type" {
    key = "instance_type"
    value = var.instance_type
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "prefix" {
    key = "prefix"
    value = "${var.prefix}${random_integer.wkspid.result}"
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "owner" {
    key = "owner"
    value = var.owner
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "hc_region" {
    key = "hc_region"
    value = var.hc_region
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "purpose" {
    key = "purpose"
    value = var.purpose
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "ttl" {
    key = "ttl"
    value = var.ttl
    category = "terraform"
    workspace_id = tfe_workspace.workspace.id
}
