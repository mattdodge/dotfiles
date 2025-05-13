alias sshqa="devtool dedicated-ssh-to-container --env qa --app core --session-duration 1800"
alias sshprod="devtool ssh-to-container --env prd"
gensg () {
	cat <<EOF
rules:
  - id: new-rule
    languages: [python]
    severity: WARNING
    message: foo
    patterns:
      - pattern: a
EOF
}
alias pt="uv run --env-file .nativedev.env pytest"
alias pti="uv run --env-file .nativedev.env pytest -i"
