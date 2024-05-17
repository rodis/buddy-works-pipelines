resource "random_uuid" "test" {
}
  
resource "null_resource" "default" {
  triggers = {
    uuid = random_uuid.test.result
  }
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}

output "FAKE_INIT_OUTPUT" {
  value = "${random_uuid.test.result}"
}