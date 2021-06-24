variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = ""
}

variable "environment" {
  type        = string
  description = ""
}

variable "meu_ip" {
  type        = string
  description = ""
}

variable "amis" {
  type = map(string)
  description = ""
}
