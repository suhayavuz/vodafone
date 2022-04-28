Hi there,

First, i have started with program dependencies, these are:

installing minikube and getting it up with hyper-V driver. And then minikube start!

then i have enabled ingress addon using minikube addons enable ingress.

I have installed docker for creating an image of the springboot project.

build a simple springboot maven project, using dockerfile, (you can find it in github repository) i have created hello-world-docker image, using docker build -t docker-hello-world:latest . command

i have also pushed my image to docker hub to pull it from kubernetes for later use.

then, i have created a deployment using kubectl create deployment hello-world-docker --image=hello-world-docker

exposed it with kubectl expose deployment hello-world-docker --type=NodePort --port=8080

i have have used this "minikube service web --url" command to see where it deployed. In my case it was  172.24.226.030115

then i have created exampleingress.yml with kubectl apply

i have verified that ip address is set kubectl get ingress. it was an ipv4 address

in my case it was hosts: hello-world-docker.info and address 172.24.226.0 with port 80

i have added that to my windows hosts file as 172.24.226.0 hello-world-docker.info

curl hello-world-docker.info and i saw that my app was working on minikube!

Additional notes: I have also installed jenkins, but i have only used it for monitoring the git pushes, i didn't have much time but, i know it can automatically take for example, images and deploy it automatically to anywhere, if you have access. I have seen example scripts but couldn't implemented them myself.

Anyway, cheers for reading all of these, thanks for your time.