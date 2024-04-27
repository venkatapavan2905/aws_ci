# aws_ci_cd

This is a simple AWS CI-CD Pipeline.

Tools/Services used - Github, AWS CodeBuild, AWS CodePipeline, AWS Systems Manager, AWS IAM, AWS S3, DockerHub.

1. Github - Version Control which contains the code repository.
2. AWS CodeBuild - To build docker image and push it to Docker hub.
3. AWS CodePipeline - Automatically triggers the pipeline when changes are made or pushed to Github.
4. AWS CodeDeploy - To deploy appliacation to Ec2 instances
5. AWS Systems Manager - To store the dockerhub credentials used in buildspec.yml file in parameters store.
6. AWS IAM - To create IAM user to create pipeline and assign service roles with required permissions for CodePipeline and CodeBuild and CodeBuild.
7. DockerHub - To store the image built.


                  Pushes                 pipeline
           User ------------->  Github --------------->  AWS CodePipeline
                code change              triggered             |
                                                               |
                                                               V            Success
                                                          AWS CodeBuild ------------->  AWS CodeDeploy ----------> EC2 Instance
                                                               | build
                                                               |  &
                                                               | push image
                                                               V
                                                            DockerHub


                                                 AWS CI-CD Pipeline


 


   ![image](https://github.com/venkatapavan2905/aws_ci/assets/138016465/0e26f220-a8f6-455f-8324-8be591a4e6d5)

                                                AWS CI-CD Pipeline
