# containerizationll Step by Step Guide



Npm install

Install the customised npm then :

Node index.js 

Then run the code for building image:

docker build -t sample_app

do docker tag <Image_name = sample_app>:
docker tag '<IMAGE_NAME>:<IMAGE_TAG>  <REPOSITORY_URI>:<IMAGE_TAG>'

more details on the docker tag:

docker tag simple-app-image:latest *<account no.>*.dkr.ecr.ap-southeast-1.amazonaws.com/*<REPOSITORY_NAME>*:latest

example:
docker tag 3.5assignment:latest 255945442255.dkr.ecr.ap-southeast-1.amazonaws.com/containerizationll:latest



`aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 255945442255.dkr.ecr.ap-southeast-1.amazonaws.com`


`docker login -u AWS -p $(aws ecr get-login-password --region ap-southeast-1) 255945442255.dkr.ecr.ap-southeast-1.amazonaws.com`

more details on docker push code:

docker push *<account no.>*.dkr.ecr.ap-southeast-1.amazonaws.com/*<REPOSITORY_NAME>*:latest


`docker push 255945442255.dkr.ecr.ap-southeast-1.amazonaws.com/containerizationll:latest`


