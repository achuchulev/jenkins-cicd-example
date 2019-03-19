# Sample example of travis CI testing and jenkins deployment pipeline
[![Build Status](https://travis-ci.org/achuchulev/jenkins-cicd-example.svg?branch=master)](https://travis-ci.org/achuchulev/jenkins-cicd-example)

## How it works

- On every commit a travis test is initiated to check that site output match the expected one
- On every PR merge a jenkins build is triggered by a webhook and the web site content is being applied on nginx web server
