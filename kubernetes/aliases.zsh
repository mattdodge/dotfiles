kubectl-view-secret() {
	kubectl get secret $1 -o json | jq '.data | map_values(@base64d)'
}

kubectl-restart() {
	kubectl get deploy $1 -o json | jq \
		'del(
			 .spec.template.spec.containers[0].env[] 
			 | select(.name == "RESTART_")) 
		| .spec.template.spec.containers[0].env += [{name: "RESTART_", value: now|tostring}]' | kubectl apply -f -
}
