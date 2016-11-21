alias d='docker $*'
alias d-c='docker-compose $*'

# Thanks to @BretFisher for these <3
# Only removes stopped containers, doesn't delete data volumes, mostly safe
alias drma='docker rm $(docker ps -aq)'
# Remove all images, doesn't remove images in use by containers, mostly safe
alias drmi='docker rmi $(docker images -q -f "dangling=true")'
# Remove all images, doesn't remove images in use by containers, mostly safe
alias drmai='docker rmi $(docker images -q)'
# For Docker Machine users, set docker cli to use the default VM
alias drdefault='eval "$(docker-machine env default)"'
# Execute interactive command in running container
alias drit='docker exec -it'
# Get the IP for eth0 inside the container
alias drip='docker inspect --format="{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}"'
