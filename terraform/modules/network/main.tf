resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Project     = "NimbusKart"
    Environment = "staging"
    Owner       = "Sachin"
    ManagedBy   = "terraform"
  }
}

resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.20.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name        = "public-subnet-1"
    Project     = "NimbusKart"
    Environment = "staging"
    Owner       = "Sachin"
    ManagedBy   = "terraform"
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.20.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name        = "public-subnet-2"
    Project     = "NimbusKart"
    Environment = "staging"
    Owner       = "Sachin"
    ManagedBy   = "terraform"
  }
}