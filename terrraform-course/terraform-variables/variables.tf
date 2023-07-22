resource "local_file" "devops"{
 filename = "/home/ubuntu/terrraform-course/terraform-variables/variables.txt"
 content = "This is my first file"
}

resource "local_file" "devops-var"{
  filename = var.filename
  content = var.content
}


output "devops_op_trainer" {
value = var.devops_op_trainer
}






