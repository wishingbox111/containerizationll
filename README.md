# Assignment for 3.5
## containerizationll Step by Step Guide

- use the code in this repo, clone it to your repo (repo name should follow aws guidelines, no caps, first character must be a text, etc)
- use powershell to cd into the repo
- in AWS ECR create a private repo as well note the name should be same as your github repo so not to cause confusion (same name is not compulsory)
- Once code is updated on Github and Desktop, use the steps below:
  
`Npm install`

- Install the customised npm then :

`Node index.js` or `npm start`

##short cut for cretaing docker image:

 docker push $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG
        echo "::set-output name=image::$ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG"


##Longer method and details explanation:

- Build Docker image where sample_app can be any name for image:
  
`docker build -t sample_app . `

* the dot at the end is very important, without it, will give error like:
---------------------------------------------------------
**ERROR: "docker buildx build" requires exactly 1 argument.
See 'docker buildx build --help'.

Usage:  docker buildx build [OPTIONS] PATH | URL | -**
---------------------------------------------------------

-( if running locally then use this code. Then run the code for the builded image note adjust both port number- first port:second port :

`docker run -p 8080:80 your-image-name`
)

do docker tag <Image_name = sample_app>:
docker tag *<IMAGE_NAME>:<IMAGE_TAG>  <REPOSITORY_URI>:<IMAGE_TAG>*

   -  *NOTE:* _in this case, it might be the repository can only carry 1 image tag. to create different image, we might need to create a repository name to create another image_

more details on the docker tag:

docker tag simple-app-image:latest *<account no.>*.dkr.ecr.ap-southeast-1.amazonaws.com/*<REPOSITORY_NAME>*:latest

example:
`docker tag 3.5assignment:latest 255945442255.dkr.ecr.ap-southeast-1.amazonaws.com/containerizationll:latest`

- to get logins for aws and dockers - not sure what this means yet:

`aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 255945442255.dkr.ecr.ap-southeast-1.amazonaws.com`

`docker login -u AWS -p $(aws ecr get-login-password --region ap-southeast-1) 255945442255.dkr.ecr.ap-southeast-1.amazonaws.com`

- push image created in docker build into ECR

more details on docker push code:

docker push *<account no.>*.dkr.ecr.ap-southeast-1.amazonaws.com/*<REPOSITORY_NAME>*:latest

`docker push 255945442255.dkr.ecr.ap-southeast-1.amazonaws.com/containerizationll:latest`


