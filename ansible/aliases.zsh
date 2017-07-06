alias ap='ansible-playbook'

# An alias to run ansible-playbook with a terraform inventory
# It uses the `terraform-inventory` script as an inventory and assumes python3 on the target hosts
alias ap-terra='ansible-playbook -i `which terraform-inventory` -e "ansible_python_interpreter=/usr/bin/python3"'
