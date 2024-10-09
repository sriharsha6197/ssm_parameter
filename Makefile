prod-parameters:
	git pull
	terraform init --backend-config=prod-env/state.tfvars
	terraform apply --auto-approve --var-file=prod-env/input.tfvars