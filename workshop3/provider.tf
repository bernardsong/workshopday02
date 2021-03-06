terraform {
    required_version = ">= 1.0.0"
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "2.12.0"
        }
        local = {
            source = "hashicorp/local"
            version = "2.1.0"
        }
    }   
    
    backend s3 {
        endpoint = "https://sgp1.digitaloceanspaces.com"
        key = "workshop3/terraform.tfstate"
        bucket = "aipc1"
        region = "sgp1"
        #skip_requesting_account_id = true 
        skip_credentials_validation = true
        #skip_get_ec2_platforms - true
        skip_metadata_api_check = true
        skip_region_validation = true
    }
}

provider digitalocean {
    token = var.DO_token 
}

provider "local" {

}
