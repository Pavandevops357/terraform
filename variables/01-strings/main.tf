variable "sample" {
  default = "hello-world" // value should be given in double coutes as it is a string
}
resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"
  }
}
