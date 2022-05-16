eb setenv AWS_ACCESS_KEY_ID = $AWS_ACCESS_KEY_ID
    && eb setenv AWS_SECRET_ACCESS_KEY = $AWS_SECRET_ACCESS_KEY
        && eb setenv AWS_DEFAULT_REGION = $AWS_DEFAULT_REGION
            && eb init --region us-east-1 udagram-api
                && eb use udagram-api-dev
                    && eb deploy udagram-api-dev