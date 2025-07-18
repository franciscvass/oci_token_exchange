terraform {  
  backend "oci" {
    bucket = "tfstate_bucket"
    key = "tf_demo_oci_backend.tfstate"
    namespace = "idjuatm1d4mr"
    config_file_profile = "DEFAULT"
    auth = "SecurityToken"
    region = "eu-frankfurt-1"    
  }
}

provider "oci" {
  region               = var.region
  auth                 = "SecurityToken"
  config_file_profile  = "DEFAULT"
}

resource "oci_core_virtual_network" "fvass_vcn" {
  cidr_block     = var.vcn_cidr_block
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
}
