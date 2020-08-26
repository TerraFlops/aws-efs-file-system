output "file_system_id" {
  description = "The EFS filesystems AWS resource ID"
  value = aws_efs_file_system.efs.id
}

output "file_system_arn" {
  description = "The EFS filesystems ARN"
  value = aws_efs_file_system.efs.arn
}

output "mount_point_ids" {
  description = "EFS mount point IDs indexed by their subnet ID"
  value = tomap({
    for subnet_id in var.subnet_ids: subnet_id => aws_efs_mount_target.efs[subnet_id].id
  })
}