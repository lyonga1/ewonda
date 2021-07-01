module "tf_backend" {
  source = "https://github.com/lyonga1/ewonda.git"

  bucket_prefix = "dnx"
  bucket_region = "us-east-1"

  bucket_sse_algorithm = "AES256"

  # allow assume role to terraform-backend role from these accounts/external roles:
  assume_policy = {
    all = "arn:aws:iam::<AWS_ACCOUNT_ID>:root"
  }
}
