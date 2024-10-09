prod-parameters:
	git pull
	terraform init --backend-config=prod-env/state.tfvars
	terraform apply --auto-approve
prod-parameters-destroy:
	terraform init --backend-config=prod-env/state.tfvars
	terraform apply --auto-approve