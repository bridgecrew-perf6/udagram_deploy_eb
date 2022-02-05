aws s3 cp --recursive www/ s3://mydeploymentbucket253015982248
aws s3 cp --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://mydeploymentbucket253015982248