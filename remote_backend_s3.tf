terraform {
  backend "s3" {
    bucket = "suhailkhalidsuhail"
    key    = "devops-project-1/jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}
