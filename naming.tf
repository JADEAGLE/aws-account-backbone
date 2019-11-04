locals {
    common_name = "${lower(join("-", list(
		var.vpc_friendly_name
	)))}"

    vpc_name = "${lower(join("-", list(
    "eu-west-1",
    local.common_name
    )))}"
}