resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}

output "FAKE_INIT_OUTPUT" {
  value = "VALUE"
}