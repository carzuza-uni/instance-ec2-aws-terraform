provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}

resource "aws_instance" "my_instance" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
    # count = "${var.number_of_instances}"
    # subnet_id = "${var.subnet_id}"
    tags = {
		Name = "HelloWorld"
	}
}