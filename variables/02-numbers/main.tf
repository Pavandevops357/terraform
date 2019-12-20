variable "sample" {
  default = 10  // Value need not to be give in double quotes
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"
  }
}
