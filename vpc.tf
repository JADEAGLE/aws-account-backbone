resource "aws_vpc" "main_vpc" {
  cidr_block = "${var.vpc_cidr_block_main}"

  tags = "${merge(
    local.merged_tags,
    map(  
      "Name", local.vpc_name
    )
  )}"
}

resource "aws_internet_gateway" "internet_gateway" {
  count  = "${var.igw_required ? 1 : 0}"
  vpc_id = "${aws_vpc.main_vpc.id}"

  depends_on = [
    aws_vpc.main_vpc,
  ]

  tags {
    Name = "Internet_gateway"
  }
}
