# String variable
variable "example_string" {
  type    = string
  default = "default_value"
  
}

# Number variable
variable "example_number" {
#   type    = number
#   default = 42
#   description = "That are used for single number"
}

# Boolean variable
variable "example_bool" {
  type    = bool
  default = true
}

# List variable
variable "example_list" {
  type    = list(string)
  default = ["item1", "item2", "item3"]
}

# Map variable
variable "example_map" {
  type = map(string)
  default = {
    key1 = "value1"
    key2 = "value2"
  }
}

# Object variable
variable "example_object" {
  type = object({
    name    = string
    age     = number
    enabled = bool
  })

  default = {
    name    = "John Doe"
    age     = 30
    enabled = true
  }
}

# Tuple variable
variable "example_tuple" {
  type    = tuple([string, number])
  default = ["item", 42]
}

# Set variable
variable "example_set" {
  type    = set(string)
  default = ["value1", "value2"]
}
