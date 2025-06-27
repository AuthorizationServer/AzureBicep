# Azure Bicep
This repository is for the storage and management of Bicep files that are deployed to Azure Container Registry (ACR), specifically for the Authorization Server. Use this repository to maintain, version, and deploy infrastructure as code (IaC) templates related to Authorization Server resources.

## Purpose
- Store Bicep files for Authorization Server infrastructure
- Enable deployment to ACR
- Support version control and collaboration for IaC

## Folder Structure
- Each top-level folder in this repository maps to a submodule in ACR.
- Organize Bicep modules by creating a separate folder for each logical submodule.
- Place related Bicep files within their respective module folders.
- **Module folder names must be in lower case and can only contain alphabets (a-z).**

## File Naming Convention
- Bicep files should be named using the following format:
  `<name of bicep module>@<date in yyyy-mm-dd format>.bicep`
  - Example: `auth-policy@2025-06-25.bicep`
- **Bicep module names must be in lower case and can contain hyphens (`-`) in addition to lower case alphabets (a-z).**
- The date after the `@` symbol is used for versioning.
- When consuming a module from ACR, replace the `@` with a colon (`:`) to specify the version.
  - Example usage: `br:acrscope.azurecr.io/authorization/auth-policy:2025-06-25`

## Usage
1. Add or update Bicep files as needed for Authorization Server resources.
2. Deploy Bicep files to ACR following your organization's deployment process.
3. Use version control to track changes and collaborate with your team.

For more details, refer to internal documentation or contact the infrastructure team.
