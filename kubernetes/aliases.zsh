kubectl-view-secret() {
	kubectl get secret $1 -o json | jq '.data | map_values(@base64d)'
}
