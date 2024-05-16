resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
resource "random_uuid" "test" {
}

output "FAKE_INIT_OUTPUT" {
  value = "${random_uuid.test.result}"
}