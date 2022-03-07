# AWS

How to use this repo:

Please run the following commands to set up:

    - A Kubernetes cluster using EKS.
    - An Elasticache cluster using Redis.
    - A DynamoDB table.

1 Clone the codes from the repo https://github.com/mayerll/AWS.git

    $git clone https://github.com/mayerll/AWS.git
    
2 Please replace the access_key and secret_key in vpc.tf

3 Run the commands of terrafrom 
    $terraform init
    $terraform plan
    $terraform apply
    
4 Check whether the EKS Elasticache cluster and DynamoDb have been created successfully by the return code of the command $terraform apply.

Please refer to the following information:

![alt text](https://github.com/mayerll/AWS/blob/main/image/pic1.png?raw=true)

5 Connect to Elastic Kubernetes Cluster, please refer to the following information:

a. Please add the kubeconfig file to ~/.kube/config, please run the following command: 

    $mv ~/.kube/config ~/.kube/config.bak 

    $mv ./kubeconfig_lisa-eks-kxQTl79D ~/kube/config


![alt text](https://github.com/mayerll/AWS/blob/main/image/pic2.png?raw=true)

b. Connect to the EKS, please refer to the following commands:

![alt text](https://github.com/mayerll/AWS/blob/main/image/pic3.png?raw=true)

c. List the pods of Elastic Kubernetes Cluster: 

![alt text](https://github.com/mayerll/AWS/blob/main/image/pic4.png?raw=true)

6 Please follow the README.md of https://github.com/mayerll/AWS to deploy the app on Kubernetes

