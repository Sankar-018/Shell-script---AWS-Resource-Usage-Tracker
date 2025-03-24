#!/bin/bash

##############
# Author: Sankar
# Date: 24-mar-2025
#
#  Version: v1
#
#  This script will report the AWS resource usage of following AWS services
################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourceTracker

# list EC2 instatnce
echo "print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].instanceId'

# list Lambda 
echo "print list of lambda functions"
aws lambda list-functions >>  resourceTracker:q!


# list IAM Users
echo "print list of IAM Users"
aws iam list- users

