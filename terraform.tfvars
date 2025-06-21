bucket_name = "dev-proj-1-jenkins-remote-state-bucket-123456"

vpc_cidr             = "11.0.0.0/16"
vpc_name             = "dev-proj-jenkins-ap-south-vpc-1"
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
availability_zone = ["ap-south-1a", "ap-south-1b"]

public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII7jqWuBG+8J8MXCPu5nDwXMF/oJBU1Saf2hHpLhz1AU root@ip-172-31-2-194"
ec2_ami_id = "ami-0f918f7e67a3323f0"
