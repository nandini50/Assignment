variable "string_var" {
  type    = string
  default = "Hello everyone!"
}

variable "number_var" {
  type    = number
  default = 12345
}

variable "list_var" {
  type    = list
  default = ["nandini", "kaushik"]
}

variable "map_var" {
  type = map(string)
  default = {
    key1 = "mallika "
    key3 = "Archita"
  }
}

variable "object_var" {
  type = object({
    name    = string
    age     = number
    address = string
  })
  default = {
    name    = "nandini kaushik"
    age     = 21
    address = "gurugram"
  }
}


variable "ami_id" {
    type = string
}