eb init udagram-Project -r us-east-1 -p node.js-12
eb setenv AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION  JWT_SECRET=$JWT_SECRET PORT=$PORT POSTGRES_DATABASE=$POSTGRES_DATABASE POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME aws_access_key_id=$aws_access_key_id aws_secret_access_key=$aws_secret_access_key
eb deploy Udagramproject-env
eb status