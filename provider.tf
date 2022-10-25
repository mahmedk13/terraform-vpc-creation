#configure aws provider that depends on credentials in 
# HME-DIR/.aws/credentials

provider "aws" {
    region=var.region
}