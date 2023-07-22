resource "local_file" "devops" {
   filename = "/home/ubuntu/terrraform-course/terraform-local/local.txt"
   content = "Hello"
}


resource "random_string" "rand-str" {
  length = 16
  special = true
  override_special = "!#$%&*()-_=+{}[]:<>?"
}


output "rand-str" {
value = random_string.rand-str[*].result
}






