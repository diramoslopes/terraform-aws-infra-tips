terraform {
   backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "descomplicando-terraform-diogo-tfstates"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  region = "us-east-1"
}
