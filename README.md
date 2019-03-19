# Example usage of Travis for CI testing and Jenkins pipeline for deployment
[![Build Status](https://travis-ci.org/achuchulev/jenkins-cicd-example.svg?branch=master)](https://travis-ci.org/achuchulev/jenkins-cicd-example)

## How it works

- On every commit/PR a travis test is initiated using inspec to check that site output match the expected one
- On every PR merge a jenkins build is triggered by a webhook and the web site content is being applied on nginx web server
