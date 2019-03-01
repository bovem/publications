# Deploy Jupyter Notebook on AWS EC2 instance  

## python-aws.sh  
1. Installs bzip2, gcc, git, htop, screen, vim, and wget on cloud instance.
2. Downloads and installs Miniconda.
3. Adds conda to PATH variable.
4. Imports "python-aws" virtual enviroment.

## python-aws.yml
Conda virtual enviroment with
- pandas
- numpy
- matplotlib
- ipython
- jupyter notebook

To copy files to AWS cloud instance use :    
```scp -i <aws-key-pair> python-aws.sh ubuntu@ec2-XX-XXX-XX-XX.XX-XXXX-X.compute.amazonaws.com:~/```  
  
```scp -i <aws-key-pair> python-aws.yml ubuntu@ec2-XX-XXX-XX-XX.XX-XXXX-X.compute.amazonaws.com:~/```

Add execution permission to bash scipt :  
```chmod +x python-aws.sh```  

To download files from AWS :  
```scp -i <aws-key-pair> ubuntu@ec2-XX-XXX-XX-XX.XX-XXXX-X.compute.amazonaws.com:<path-to-file> <destination>```