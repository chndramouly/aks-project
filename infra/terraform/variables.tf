variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "aks-project-rg"
}

variable "acr_name" {
  description = "Name for the Azure Container Registry (globally unique, lowercase)"
  type        = string
  default     = "aksprojectacr"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "aks-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "public_subnet_prefixes" {
  description = "CIDR prefixes for the public subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "private_subnet_prefixes" {
  description = "CIDR prefixes for the private subnet"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "aks-cluster"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "VM size for each node"
  type        = string
  default     = "Standard_B1s"
}

variable "kubernetes_version" {
  description = "Optional: specify a K8s version; null picks default."
  type        = string
  default     = null
}
