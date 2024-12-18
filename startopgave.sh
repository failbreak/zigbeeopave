#!/bin/bash
# Im lazy so im making a script to run things for me
if [ -d ./zigbeeopgave ]; then
  cd ./zigbeeopgave
  echo "Directory exists."
  getfilesfromgit
  echo "Finished downloading files"
else
  mkdir zigbeeopgave
  cd ./zigbeeopgave
  getfilesfromgit
  
fi
runzigbee


getfilesfromgit(){
  echo "Downloading config files"
if curl https://raw.githubusercontent.com/failbreak/zigbeeopave/refs/heads/main/docker-compose.yml -o docker-compose.yml; then
  echo "Finished Downloading docker compose"
fi
if curl https://raw.githubusercontent.com/failbreak/zigbeeopave/refs/heads/main/configuration.yml -o configuration.yml; then
  echo "Finished Downloading configuration"
fi
}

runzigbee(){
docker compose up -d
}
