variable "sample" {
  type    = "map"
  default = {
    course_name = "DevOps"
    timings     = "6AMIST"
    trainer     = "Raghu"
  }
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo Welcome to ${var.sample["course_name"]} Training, Timing is ${var.sample["timings"]} and Trainer is ${var.sample["trainer"]}"
  }
}
