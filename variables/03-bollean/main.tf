variable "sample" {
  default = true  // Value need not to be give in double quotes for boolean value
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"
  }
}
