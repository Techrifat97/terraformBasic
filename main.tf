# Include variable definitions
terraform {
  required_version = ">= 0.13, < 0.14"
}

# Local variable
locals {
  concatenated_string = "prefix_${var.example_string}_suffix"
}

# Local resource using variables
resource "local_example" "example_resource" {
  name    = local.concatenated_string
  number  = var.example_number
  boolean = var.example_bool
  items   = var.example_list
  values  = var.example_map
  person  = var.example_object
  tuple   = var.example_tuple
  values_set = var.example_set
  # other resource configurations...
}

# Output to display the result
output "result" {
  value = local.concatenated_string
}
