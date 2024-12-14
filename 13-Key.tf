# TOKYO  

resource "tls_private_key" "MyLinuxBox1" {
  provider = aws.ap-northeast-1
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBox1" {
  private_key_pem = tls_private_key.MyLinuxBox1.private_key_pem
}

output "private_key" {
  value     = tls_private_key.MyLinuxBox1.private_key_pem
  sensitive = true
}

output "public_key" {
  value = data.tls_public_key.MyLinuxBox1.public_key_openssh
}

# NEW YORK 

resource "tls_private_key2" "MyLinuxBox2" {
  provider = aws.us-east-1
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key2" "MyLinuxBox2" {
  private_key_pem = tls_private_key2.MyLinuxBox2.private_key_pem
}

output "private_key2" {
  value     = tls_private_key2.MyLinuxBox2.private_key_pem
  sensitive = true
}

output "public_key2" {
  value = data.tls_public_key2.MyLinuxBox23.public_key_openssh
}

# LONDON  

resource "tls_private_key3" "MyLinuxBox3" {
  provider = aws.eu-west-2
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key3" "MyLinuxBox3" {
  private_key_pem = tls_private_key3.MyLinuxBox3.private_key_pem
}

output "private_key3" {
  value     = tls_private_key3.MyLinuxBox3.private_key_pem
  sensitive = true
}

output "public_key3" {
  value = data.tls_public_key3.MyLinuxBox3.public_key_openssh
}

# SAO PAULO

resource "tls_private_key4" "MyLinuxBox4" {
  provider = aws.sa-east-1
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key4" "MyLinuxBox4" {
  private_key_pem = tls_private_key4.MyLinuxBox4.private_key_pem
}

output "private_key4" {
  value     = tls_private_key4.MyLinuxBox4.private_key_pem
  sensitive = true
}

output "public_key4" {
  value = data.tls_public_key4.MyLinuxBox4.public_key_openssh
}

# AUSTRALIA 

resource "tls_private_key5" "MyLinuxBox5" {
  provider = aws.ap-southeast-2
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key5" "MyLinuxBox5" {
  private_key_pem = tls_private_key5.MyLinuxBox5.private_key_pem
}

output "private_key5" {
  value     = tls_private_key5.MyLinuxBox5.private_key_pem
  sensitive = true
}

output "public_key5" {
  value = data.tls_public_key5.MyLinuxBox5.public_key_openssh
}

# HONG KONG 

resource "tls_private_key6" "MyLinuxBox6" {
  provider = aws.ap-east-1
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key6" "MyLinuxBox6" {
  private_key_pem = tls_private_key6.MyLinuxBox6.private_key_pem
}

output "private_key6" {
  value     = tls_private_key6.MyLinuxBox6.private_key_pem
  sensitive = true
}

output "public_key6" {
  value = data.tls_public_key6.MyLinuxBox6.public_key_openssh
}

# CALIFORNIA 

resource "tls_private_key7" "MyLinuxBox7" {
  provider = aws.us-west-1
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key7" "MyLinuxBox7" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_key7" {
  value     = tls_private_key7.MyLinuxBox7.private_key_pem
  sensitive = true
}

output "public_key7" {
  value = data.tls_public_key7.MyLinuxBox7.public_key_openssh
}
