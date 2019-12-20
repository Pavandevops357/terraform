variable "sample" {
  type    = "list"
  default = ["apple", "banana"]
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample[0]}"
  }
}
