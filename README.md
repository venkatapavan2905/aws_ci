# aws_ci

This is a simple AWS CI Pipeline.

Tools/Services used - Github, AWS CodeBuild, AWS CodePipeline, AWS Systems Manager, AWS IAM, AWS S3, DockerHub.

1. Github - Version Control which contains the code repository.
2. AWS CodeBuild - To build docker image and push it to Docker hub.
3. AWS CodePipeline - Automatically triggers the pipeline when changes are made or pushed to Github.
4. AWS Systems Manager - To store the dockerhub credentials used in buildspec.yml file in parameters store.
5. AWS IAM - To create IAM user to create pipeline and assign service roles with required permissions for CodePipeline and CodeBuild.
6. DockerHub - To store the image built.


                  Pushes                 pipeline
           User ------------->  Github --------------->  AWS CodePipeline
                code change              triggered             |
                                                               |
                                                               V            Push
                                                          AWS CodeBuild ------------->  DockerHub
                                                               |           image
                                                               |
                                                               V
                                                          BUild Image


                                                 AWS CI Pipeline
