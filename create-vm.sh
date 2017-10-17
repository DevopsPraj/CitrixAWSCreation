aws configure set aws_access_key_id ${ACCESS_KEY}
aws configure set aws_secret_access_key ${SECRET_KEY}
aws configure set default.region ${REGION}
hostname
Instance_id=`aws ec2 run-instances --image-id ${IMAGE_ID} --count ${Num_of_Instances} --instance-type ${INSTANCE_TYPE} --key-name ${KEYNAME} --security-group-ids ${SECURITY_ID} --subnet-id ${SUBNET_ID} --associate-public-ip-address --query 'Instances[0].InstanceId' --region=${REGION} --output text`

aws ec2 create-tags --resources $Instance_id --tags Key=Name,Value=${INSTANCE_NAME}
