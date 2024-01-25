locals {
  string_local = var.string_var
  number_local = var.number_var
  list_local   = var.list_var
  map_local    = var.map_var
  object_local = var.object_var
}


resource "local_file" "file1" {
  content= local.string_local
  filename = "${path.module}/dir1/string"
}

resource "local_file" "file2" {
  content = var.number_var
  filename = "${path.module}/dir1/number"
}

resource "local_file" "file3" {
  content = var.list_var[0]
  filename = "${path.module}/dir2/list"
}

resource "local_file" "file4" {
  content = var.map_var.key3
  filename = "${path.module}/dir2/map"
}

resource "local_file" "file5" {
  content = var.object_var.name
  filename = "${path.module}/dir3/object"
}




resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = var.ami_id
  }
  byte_length = 8
}