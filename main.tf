terraform {
  required_version = ">= 1.4.0"
}

resource "terraform_data" "project" {
  input = {
    project = "Version Control Infrastructure"
    purpose = "Track Terraform updates using Git"
  }
}

output "project_details" {
  value = terraform_data.project.output
}
