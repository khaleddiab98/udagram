# Udagram

##Infrastructure Description

A Node.js Full-Stack application that supports user registration, log in, and uploading of photos. The Database was created using AWS RDS and uses PostgreSQL. The front-end was created using HTML, CSS, TypeScript, JavaScript, and Angular, and is hosted on AWS S3. The Backend was created using TypeScript, JavaScript, Express.js, and Sequelize for database communication. The application utilizes an automated pipeline using CircleCI and is automatically triggered on change to the GitHub repo.

## CirclCI Status Badge
[![CircleCI](https://circleci.com/gh/khaleddiab98/udagram/tree/main.svg?style=svg)](https://circleci.com/gh/khaleddiab98/udagram/tree/main)

## Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

-Elastic Beanstalk for hosting the backend.

```



## Pipeline Process
First, the dependencies are installed for both the frontend and backend. Then, the build scripts for both ends are triggered. An AWS S3 command is then run to deploy the newly built frontend from the ‘Archive.zip’. Last, using the ElasticBeanstalk CLI, we deploy the fresh backend build to the elastic beanstalk environment.
### Installation

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres. <Place holder for link to classroom article>
1. In AWS, provision a s3 bucket for hosting the uploaded files. <Place holder for tlink to classroom article>
1. Export the ENV variables needed or use a package like [dotnev](https://www.npmjs.com/package/dotenv)/.
1. From the root of the repo, navigate udagram-api folder `cd starter/udagram-api` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run dev`.
1. Without closing the terminal in step 1, navigate to the udagram-frontend `cd starter/udagram-frontend` to intall the node_modules `npm install`. After installation is done start the api in dev mode with `npm run start`.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
