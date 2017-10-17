Instance_id=`aws ec2 run-instances --image-id ${IMAGE_ID} --count ${Num_of_Instances} --instance-type ${INSTANCE-TYPE} --key-name ${KEYNAME} --security-group-ids ${SECURITY_ID} --subnet-id {SUBNET_ID} --associate-public-ip-address --query 'Instances[0].InstanceId' --output text`

aws ec2 create-tags --resources $Instance_id --tags Key=Name,Value=${INSTANCE_NAME}
