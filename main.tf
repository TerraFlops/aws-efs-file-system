# Create EFS file system
resource "aws_efs_file_system" "efs" {
  creation_token = var.name
  encrypted = true
  performance_mode = var.performance_mode
  tags = {
    Name = var.name
  }
}

# Create a mount target in each subnet
resource "aws_efs_mount_target" "efs" {
  for_each = var.subnet_ids
  file_system_id = aws_efs_file_system.efs.id
  subnet_id = each.value
  security_groups = var.security_group_ids
}