alias sshqa="devtool dedicated-ssh-to-container --env qa --app core --session-duration 1800"
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
