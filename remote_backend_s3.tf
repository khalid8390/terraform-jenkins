terraform {
  backend "s3" {
    bucket = "suhailkhalid"
    key    = "devops-project-1/jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}
