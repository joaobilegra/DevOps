 bucket = "test412737927692"
 key    = "dev/terraform.tfstate"
 region = "us-east-1"
 access_key = ""
 secret_key = ""

 execute "terraform init -backend=true -backend-config="backend.hcl"