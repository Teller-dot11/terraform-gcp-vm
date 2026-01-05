terraform {
 backend "gcs" {
  bucket = "terrafor_storageb"
  prefix = "terraform/state"
  }
 } 
  
