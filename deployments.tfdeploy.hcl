
store "varset" "ibm_credentials" {
  id       = "varset-hAu8JdqJpFtDUp6o" # Replace with the ID of the HCP Terraform variable set containing IBM Cloud credentials
  category = "terraform"
}


deployment "ca-tor" {
  inputs = {
    prefix            = "ocp-prefix2"
    region            = "ca-tor"
    resource_group_id = "07b6d899988a4631841e3bc7d0307dcf"
    vpc_id            = "r038-ffde3b42-8cd6-4f52-a191-e94fece7512f"
    resource_tags     = ["ca-tor"]
    ibmcloud_api_key  = store.varset.ibm_credentials.ibmcloud_api_key # pragma: allowlist secret
  }
}
