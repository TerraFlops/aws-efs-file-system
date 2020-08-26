variable "name" {
  type = string
}

variable "subnet_ids" {
  type = set(string)
}

variable "security_group_ids" {
  type = set(string)
}

variable "encrypted" {
  type = bool
  default = true
}

variable "performance_mode" {
  type = string
  default = "generalPurpose"
}
