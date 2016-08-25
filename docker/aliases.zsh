# Clean non running containers
alias docker-clean='docker rm $(docker ps -a -q)'

# Clean untagged docker images
alias docker-image-clean='docker rmi $(docker images -q -f dangling=true)'

# Stop, remove, build, and run current docker compose project
alias docker-compose-cycle='docker-compose stop && docker-compose rm -f && docker-compose build && docker-compose up -d'
