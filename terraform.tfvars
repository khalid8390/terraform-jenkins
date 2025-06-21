bucket_name = "dev-proj-1-jenkins-remote-state-bucket-123456"

vpc_cidr             = "11.0.0.0/16"
vpc_name             = "dev-proj-jenkins-ap-south-vpc-1"
cidr_public_subnet   = ["11.0.5.0/24", "11.0.6.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
availability_zone = ["ap-south-1a", "ap-south-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuEmASZN7jnZjvbV3mxawQRSj+EKfNfubBl8gPqAj4Su7mrqVCunUKOFW04MA8yBvCrEdv0YNmkJ0GXVOl6TGUZ75kPwNwRciFVKAU1Pa4FTPXMPUdDdfeyZywvPhpC5lmW04NrtEwZeydJdqWSARr537WHdDuXaB0NoDn2xD1uGxkh82+lNgDLKjg0YetQT3ZUdY8y+DiisqlJ9+6ayBLKYu95wVMSOmbimlVdTl2VWSw+qyCpvshIhWRIOy3r4ua87qpsj41iB3w9P+bbwXOnqSQaLdZfsTMs+2Pt8iBDFDd6CswX4oIny5OjgVetjtLKxW4hpkwRrvpSGz/Z9i3"
ec2_ami_id = "ami-0f918f7e67a3323f0"
