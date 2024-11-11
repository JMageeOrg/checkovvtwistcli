# twistcli vs checkov

The intention of this repo is to showcase the differences of what twistcli (container build scan tool) and checkov (IaC, SCA, Secrets Scanning tool) may scan.

There is a simple Dockerfile that has some commands to do some daft installs when the Dockerfile is actually built. The idea is to show that CheckOv will only pick up the dependicies referenced in the Dockerfile, where TwistCli will scan after everything is built. There is a distinct difference and a need for both. 

There are two Github Actions included in this repo: (Both configured for manual kick off only)

1. TwistCli Scan - this will build the container image and run a twistcli scan against the container. variables will decide what tenant to send the data to. This is retrieved from Runtime Security/Manage/System in Prisma Cloud:


![runtime security](https://github.com/user-attachments/assets/aaff3377-fefa-4ed1-84c5-6e4bf3a496a2)



   
2. CheckOv Scan - This will run a CheckOv scan against the contents of the repo/Dockerfile or any support SCA/IaC Framework etc. so you can compare results. This will use the console variable in api format like vscode configuration and use the following details for the API KEY {Access Key::Secret}

The repo includes the following at the moment:

- Terraform
- Bicep
- Python requirements
- Dockerfile



