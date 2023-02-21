# Terraform_mySQL_Python_ETL

Section 1 Goal: Database Configuration & Python ETL 
Provision one database of your choosing (SQL, NoSQL, Graph).  Write a python ETL that ingests the provided data, transforms it in some way, and loads it into the database. This should be reproducible code with documentation. (Terraform / Cloudformation / Ansible, docker-compose etc). 

As part of the take home assignment section 1:

  1) Using Terraform to provision mySQL server and DB in Azure cloud.
  2) Using Python code to Extract the file from local, after few basic checks transform it and Load to the Azure SQL DB.

# Provisioning mySQL Server and DB using Terraform:

Code: sql.tf

Approach: 

  -> Assign resource group name and location.
  
  -> Create SQL Server
  
  -> Create SQL DB in the newly created server.
  
  -> Add firewall rule to provide access to client machine.
  
Execution:

  -> Pre-requisites - locally installed visual studio code.
  
  -> Terraform installed and plugged in.
  
  -> Install Azure tools in VSC.
  
  -> Use command 'az login' to verify the connection from ternminal
  
  -> Initialize terraform: Command- terraform init
  
  -> Verify the plan using: Command- terraform plan
  
  -> Execute and provision: Commanmd- terraform Apply->enter 'yes'

# Python ETL:

Approach:

  -> Copy the source file in local.
  
  -> Ingest the file to DataFrame using Anaconda notebook.
  
  -> Perform tranformations:
  
      1) Basic Checks
      
      2) Sorting by name
      
      3) Add column for full name and move the position
      
      4) Reset and adjust the index
      
      5) email column verification
      
  -> Connect to mySQL server/DB
  
  -> Load Data !!! GOAL ACHIEVED
  
  -> Extract from table for proof.
  
-------------------------------------------------------------------------------------------------------------------------------------------

# Further Improvements:
  
  -> Auto create the table using DataFrame structure.
  
  -> Update ETL section.
  
  -> Provision Azure storgae account using Terraform
  
  -> Ingestion of source file from Azure storage.
  
  -> Create seperate layers for large datasets, Raw, Clean and Processed
  
  
