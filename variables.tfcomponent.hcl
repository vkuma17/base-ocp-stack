variable "ibmcloud_api_key" {
  description = "The IBM Cloud API key to deploy resources."
  type        = string
  sensitive   = true
  ephemeral   = true
}

variable "region" {
  description = "The IBM Cloud region where the cluster is provisioned."
  type        = string
}

variable "prefix" {
  description = "The prefix to add to all resources created by this stack."
  type        = string
}

variable "resource_group_id" {
  description = "The ID of an existing IBM Cloud resource group where the cluster is grouped."
  type        = string
}

variable "vpc_id" {
  description = "ID of the existing VPC instance where the cluster is provisioned."
  type        = string
}

variable "ocp_version" {
  description = "The version of the OpenShift cluster to provision (format 4.x). If no value is specified, the current default version is used."
  type        = string
  default     = "default"
}

variable "resource_tags" {
  description = "List of tags to add to the cluster resources."
  type        = list(string)
  default     = []
}

variable "access_tags" {
  description = "List of access management tags to add to the cluster resources."
  type        = list(string)
  default     = []
}

variable "ocp_entitlement" {
  description = "Value that is applied to the entitlements for OCP cluster provisioning."
  type        = string
  default     = "cloud_pak"
}
