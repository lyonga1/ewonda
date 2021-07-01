module "tf_backend1" {
  source = "https://github.com/lyonga1/ewonda.git"

  bucket_prefix = "dnx"
  bucket_region = "ap-southeast-2"

  bucket_sse_algorithm = "AES256"

  # allow assume role to terraform-backend role from these accounts/external roles:
  assume_policy = {
    all = "arn:aws:iam::<AWS_ACCOUNT_ID>:root"
  }
}