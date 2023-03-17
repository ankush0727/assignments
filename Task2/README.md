Jenkins Shared Library 
This project provides easy example of shared library which can be used into Jenkins pipeline.

Setup instructions

In Jenkins, go to Manage Jenkins → Configure System. Under Global Pipeline Libraries, add a library with the following settings:
Library name: jenkins-shared-lib
Default version: Specify a Git reference (branch or commit SHA), e.g. master
Retrieval method: Modern SCM
Select the Git type
Project repository: https://github.com/ankush0727/jenkins-shared-lib.git
Credentials: (leave blank)

Then create a Jenkins job with the following pipeline:
@Library('jenkins-shared-lib@master')_

pipeline {
    agent any
    
stages {
    stage('Git Checkout') {
        steps {
           dir("app") {
             repoCheckout(
                 branch: "master",
                 url: "https://github.com/ankush0727/spring-petclinic"
                )
         }
         }
    }
  }
}