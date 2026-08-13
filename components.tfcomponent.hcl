########################################################################################################################
# OCP VPC Cluster
########################################################################################################################

component "ocp_base" {
  source  = "terraform-ibm-modules/base-ocp-vpc/ibm"
  version = "3.90.4"

  inputs = {
    resource_group_id = var.resource_group_id
    region            = var.region
    cluster_name      = var.prefix
    resource_tags     = var.resource_tags
    access_tags       = var.access_tags
    ocp_version       = var.ocp_version
    ocp_entitlement   = var.ocp_entitlement
    vpc_id            = var.vpc_id

    force_delete_storage                = true
    disable_outbound_traffic_protection = true

    # vpc_subnets: map of subnet pool name -> list of subnets in that pool.
    # Each subnet entry requires id, zone and cidr_block.
    # Replace the placeholder values below with actual subnet details from your VPC.
    vpc_subnets = {
      default = [
        {
          id         = "02q7-9de9bd17-55c3-42d2-a413-8ecd3920237b"
          zone       = "ca-tor-1"
          cidr_block = "10.10.10.0/24"
        }
      ]
    }

    worker_pools = [
      {
        subnet_prefix    = "default"
        pool_name        = "default"
        machine_type     = "bx2.4x16"
        workers_per_zone = 2
        operating_system = "RHCOS"
      }
    ]
  }

  providers = {
    ibm        = provider.ibm.this
    null       = provider.null.this
    kubernetes = provider.kubernetes.this
    time       = provider.time.this
    external   = provider.external.this
    random     = provider.random.this
    terraform  = provider.terraform.this
  }
}
