resource "aws_vpc" "playwright" {
  cidr_block = var.playwright_vpc_cidr_block
}

resource "aws_subnet" "playwright_a" {

  vpc_id     = aws_vpc.playwright.id
  cidr_block = var.playwright_subnet_a_cidr_block

  availability_zone = "us-east-1a"
}

resource "aws_subnet" "playwright_b" {

  vpc_id     = aws_vpc.playwright.id
  cidr_block = var.playwright_subnet_b_cidr_block

  availability_zone = "us-east-1b"
}

resource "aws_subnet" "playwright_c" {

  vpc_id     = aws_vpc.playwright.id
  cidr_block = var.playwright_subnet_c_cidr_block

  availability_zone = "us-east-1c"
}

resource "aws_subnet" "playwright_d" {

  vpc_id     = aws_vpc.playwright.id
  cidr_block = var.playwright_subnet_d_cidr_block

  availability_zone = "us-east-1d"
}

resource "aws_subnet" "playwright_e" {

  vpc_id     = aws_vpc.playwright.id
  cidr_block = var.playwright_subnet_e_cidr_block

  availability_zone = "us-east-1e"
}

resource "aws_subnet" "playwright_f" {

  vpc_id     = aws_vpc.playwright.id
  cidr_block = var.playwright_subnet_f_cidr_block

  availability_zone = "us-east-1f"
}
