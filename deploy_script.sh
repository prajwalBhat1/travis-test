echo "running the deploy script"
ssh -i "deploy_key" ec2-user@ec2-13-233-206-157.ap-south-1.compute.amazonaws.com << EOF
docker pull pbhat080513/travis-ci-test:latest
docker run pbhat080513/travis-ci-test:latest
exit
EOF
