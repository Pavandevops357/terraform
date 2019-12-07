resource "aws_instance" "web" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-03413ff0fcf074bb4", "sg-0fcc10a5254080161"]
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "root"
      password = "DevOps321"
      host = self.public_ip
      inline = [
        "cd /tmp",
        "git clone https://pavandeops357:pavan357github.com/Pavandevops357/pkDevOps.git",
        "sh /tmp/pkDevOps/student-app.sh",

      ]
    }
  }
}
