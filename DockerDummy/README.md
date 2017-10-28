# create a docker dummy with "echo" as the ENTRYPOINT
docker build -t example .
# --rm easy the docker when stop 
docker run --rm -t example Hello
