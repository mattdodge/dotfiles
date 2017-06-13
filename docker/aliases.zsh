# Clean non running containers
alias docker-clean='docker rm $(docker ps -a -q)'

# Clean untagged docker images
alias docker-image-clean='docker rmi $(docker images -q -f dangling=true)'

# Stop, remove, build, and run current docker compose project
alias docker-compose-cycle='docker-compose stop && docker-compose rm -f && docker-compose build && docker-compose up -d && docker-compose logs -f'

# Enter a shell in a container
docker-shell() { docker exec -i -t $1 /bin/bash; }

# Log in to AWS ECR
alias docker-login='eval `aws ecr get-login --region=us-west-2`'
