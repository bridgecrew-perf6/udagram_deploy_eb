## Project arch
![alt text](/screenShots/Diagrams/Deployment_Diagram.drawio.png)

## Pipeline overview
![alt text](/screenShots/Diagrams/pipeline_Diagram.drawio.png)



## Project setup

1. Make sure to add this project into your circleci
1. Add the following env variables to your circleci project to be able to use `AWS` Orb
    ```
    AWS_ACCESS_KEY_ID
    AWS_DEFAULT_REGION
    AWS_SECRET_ACCESS_KEY
    ```
1. After that make sure to create ElasticBeanstalk (EB) app with nodejs as a plateform
1. Update  `udagram-api/.elasticbeanstalk/config.yml` with your EB values
`eb setenv AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION  JWT_SECRET=$JWT_SECRET PORT=$PORT POSTGRES_DATABASE=$POSTGRES_DATABASE POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME aws_access_key_id=$aws_access_key_id aws_secret_access_key=$aws_secret_access_key`
1. After that you will need to create RDS and pass the db information as env variables to your software env over aws 
    ```
    AWS_BUCKET
    AWS_PROFILE
    AWS_REGION
    JWT_SECRET
    PORT
    POSTGRES_DB
    POSTGRES_HOST
    POSTGRES_PASSWORD
    POSTGRES_USERNAME
    ```
1. Inorder to serve the Frontend you will need to create s3 bucket that's readable
1. After creating the bucket, update `YOUR-BUCKET-NAME` with the new bucket name in this file (`udagram-frontend/bin/deploy.sh`)  
    ```
    aws s3 cp --recursive ./www s3://YOUR-BUCKET-NAME
    ```