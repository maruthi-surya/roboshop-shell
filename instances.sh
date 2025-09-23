#!/bin/bash

ami_id="ami-09c813fb71547fc4f"
sg_id="sg-02704cfa1a0558868"
domain_name="daws-practice.fun"

for instance in $@
do

instance_id=$(aws ec2 run-instances --image-id $ami_id --instance-type t3.micro --security-group-ids $sg_id --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instance}]" --query 'Instances[0].InstanceId' --output text)

if [ $instance != "frontend" ]; then

ip=$(aws ec2 describe-instances --instance-ids $instance_id --query 'Reservations[0].Instances[0].PrivateIpAddress' --output text)
record_name=$instance.$domain_name

else

ip=$(aws ec2 describe-instances --instance-ids $instance_id --query 'Reservations[0].Instances[0].PublicIpAddress' --output text)
record_name=$domain_name

fi

echo "$instance: $ip"
echo "$record_name"

done