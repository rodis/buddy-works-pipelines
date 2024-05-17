resource "null_resource" "example" {
  # Using triggers to force execution on every apply
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "echo This specific command will execute every time during apply as triggers are used"
  }
}

resource "random_uuid" "test" {
}

output "FAKE_INIT_OUTPUT" {
  value = "${random_uuid.test.result}"
}