
resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = var.compartment_id
    name = var.bucket_name
    namespace = var.namespace

    #Optional
    access_type = "NoPublicAccess"
    object_events_enabled = false
    
    versioning = "Enabled"
}


output "bucket" {
  value = oci_objectstorage_bucket.test_bucket
}
