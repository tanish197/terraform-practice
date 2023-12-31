variable "filename" {
   default = "/home/ubuntu/terrraform-course/terraform-variables/devops-automated.txt"
}



variable "content" {
   default = "Autogenerated"
}

variable "devops_op_trainer" {}


variable "content_map" {
type = map
default = {
"content1" = "THis is first file"
"content2" = "this is second one"
}
}


variable "file_list" {
type = list
default = ["/home/ubuntu/terrraform-course/terraform-variables/file_1.txt", "/home/ubuntu/terrraform-course/terraform-variables/file_2.txt"]
}

variable "aws_ec2_object" {
 type = object({
        name = string
        instances = number
        keys = list(string)
        ami = string
})

default = {
   name = "test_ec2_instance"
   instances = 4
   keys = ["key1.pem", "key2.pem"]
   ami = "ubuntu.afed34"
}
}
