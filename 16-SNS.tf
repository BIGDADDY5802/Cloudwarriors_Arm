# # Define the AWS Provider
# provider "aws" {
#   region = "us-east-1" # Replace with your desired AWS region
# }

# # Create an SNS Topic
# resource "aws_sns_topic" "example_topic" {
#   name = "example-topic" # Replace with your topic name
# }

# # Create an SNS Subscription (Optional)
# resource "aws_sns_topic_subscription" "example_subscription" {
#   topic_arn = aws_sns_topic.example_topic.arn
#   protocol  = "email" # Protocol options: email, SMS, HTTP, etc.
#   endpoint  = "jrperales@me.com" # Replace with your subscription endpoint
# }

# # Output the Topic ARN (Optional)
# output "sns_topic_arn" {
#   value = aws_sns_topic.example_topic.arn
# }
