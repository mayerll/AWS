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

5 Connect to Elastic Kubernetes Cluster, please refer to the following information:

![alt text](https://github.com/mayerll/AWS/blob/main/image/pic1.png?raw=true)

![alt text](https://github.com/mayerll/AWS/blob/main/image/pic2.png?raw=true)

