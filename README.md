# Recreate an AWS Default VPC using Terraform

It's possible to recreate the default VPC in a given AWS region using [Terraform's][terraform] [`aws_default_vpc` resource][aws_default_vpc].

## Recreate a completely destroyed default VPC

1. Clone this repo.
2. Run `terraform apply -var region=<region>`, substituting `<region>`, and follow the prompts.
3. Wait as Terraform recreates everything. 🎉

## I've only lost some default VPC resources

If you've only lost _some_ default VPC resources, Terraform will not recreate them.

To recreate them, you'll need to completely destroy the existing default VPC:

1. Delete the whole default VPC (perhaps carefully using [aws-nuke]).
    - In my experience, Terraform seemed to struggle, even with `aws_default_vpc`'s `force_destroy: true`
2. Follow the instructions above to recreate the default VPC.

[aws-nuke]: https://github.com/rebuy-de/aws-nuke
[aws_default_vpc]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_vpc.html
[terraform]: https://www.terraform.io/
