# Terraflops Terraform Module
 
### Module name

Insert module description

#### Example usage

```hcl-terraform
module "example" {
  source = "git::https://github.com/TerraFlops/aws-efs-file-system?ref=v1.0"
  name = "logstash"
  security_group_ids = [
    module.vpc_example.security_group_ids["logstash_efs"]
  ]
  subnet_ids = [
    module.vpc_example.subnet_ids["compute_subnet_2a"],
    module.vpc_example.subnet_ids["compute_subnet_2b"]
  ]
}
```
