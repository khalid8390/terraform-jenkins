variable "domain_name" {}
variable "hosted_zone_id" {}

output "dev_proj_1_acm_arn" {
  value = arn:aws:acm:ap-south-1:072461344079:certificate/ace18ec3-945e-4634-9d1e-e47592814fd3
}

resource "aws_acm_certificate" "dev_proj_1_acm_arn" {
  domain_name       = var.domain_name
  validation_method = "DNS"

 data "aws_acm_certificate" "existing_cert" {
  domain   = "oyester.icu"
  statuses = ["ISSUED"]   # You can also use ["PENDING_VALIDATION"]
  most_recent = true
}

}

