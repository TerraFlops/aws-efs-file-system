# Terraflops Terraform Module
 
### AWS EFS File System

This module can be used to provision an EFS file system and one or more
mount points in VPC subnet(s).

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
