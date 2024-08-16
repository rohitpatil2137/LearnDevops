
# Importing Existing Infrastructure with Terraform

Terraform allows you to bring your existing infrastructure under its management, ensuring a consistent workflow. With Terraform 1.5+, you can now import resources using configuration, which is safer and more suitable for CI/CD pipelines.

## Typical Terraform Workflow:

- **Write Configuration**: Define the infrastructure you want to create.
- **Review Plan**: Ensure the configuration matches your expectations.
- **Apply Configuration**: Terraform creates your infrastructure.

Terraform stores infrastructure details in a state file, which is updated when you modify and apply configurations.

## Importing Resources into Terraform

### Steps to Import Existing Resources:

1. **Identify Resources**: Determine which existing infrastructure you want to import.
2. **Define Import Block**: Create an import block in your Terraform configuration.
3. **Generate Configuration**: Use Terraform to generate configuration for the resource.
4. **Prune Configuration**: Trim the generated configuration to include only necessary arguments.
5. **Apply Configuration**: Bring the resource into Terraform's state file.

### Example: Importing a Docker Container

#### Prerequisites:

- Docker installed and running.
- Terraform v1.5+ installed locally.

#### Step 1: Create a Docker Container

```bash
docker run --name hashicorp-learn --detach --publish "0.0.0.0:8080:80" nginx:latest
```

Verify the container is running:

```bash
docker ps --filter="name=hashicorp-learn"
```

#### Step 2: Initialize Terraform Configuration

Clone the example repository and navigate to the directory:

```bash
git clone https://github.com/hashicorp/learn-terraform-import.git
cd learn-terraform-import
terraform init
```

#### Step 3: Define Import Block

Get the full container ID:

```bash
docker inspect --format="{{.ID}}" hashicorp-learn
```

Add an import block to `docker.tf`:

```hcl
import {
  id = "FULL_CONTAINER_ID"
  to = docker_container.web
}
```

#### Step 4: Generate Configuration

Generate the Terraform configuration for the container:

```bash
terraform plan -generate-config-out=generated.tf
```

Review and prune `generated.tf` to keep only necessary configurations.

#### Step 5: Apply Configuration

Update the configuration to match the container’s current settings, then apply:

```bash
terraform apply
```