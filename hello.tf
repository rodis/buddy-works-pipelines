resource "random_uuid" "test" {
}
  
resource "null_resource" "default" {
  triggers = [
    random_uuid.test.result
  ]
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
resource "random_uuid" "test" {
}

output "FAKE_INIT_OUTPUT" {
  value = "${random_uuid.test.result}"
}