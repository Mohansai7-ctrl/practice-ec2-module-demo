#its root module is practice-terraform-aws-ec2

module "ec2" {
    #Here the git hub link has to be provideds as "git::<github_link>.git"  #must give direct repository name, it wont works for sub repositories(directory inside a repository)
    #source = "git::https://github.com/Mohansai7-ctrl/practice-terraform-aws-ec2.git"
    source = "../practice-terraform-aws-ec2"

    security_group_id = ["sg-0d91387712ba38962"]

    ami_id = var.ami_info

    instances = "t3.small"
}