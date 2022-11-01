variable "aws_region" {
  type        = string
  default     = "sa-east-1"
  description = "Região da conta"
}

variable "client_id" {
  type        = string
  default     = "48dee950-fd48-422f-9ea7-d6c1726a4936"
  description = "Client ID da operação"
}

variable "tags" {
  type        = map(string)
  description = ""
  default = {
    "Name"        = "My bucket"
    "Environment" = "Dev"
    "Owner"       = "Leo"
  }
}