#!/usr/bin/env zsh

local +r Regions=(
  us-east-2
  us-east-1
  us-west-1
  us-west-2
  ap-south-1
  ap-northeast-2
  ap-northeast-3
  ap-southeast-1
  ap-southeast-2
  ap-northeast-1
  ca-central-1
  cn-north-1
  cn-northwest-1
  eu-central-1
  eu-west-1
  eu-west-2
  eu-west-3
  sa-east-1
)

for region in $Regions
do
  print "Region: $region"
  aws configservice list-discovered-resources --resource-type AWS::RDS::DBSnapshot --region $region
done
