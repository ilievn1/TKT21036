# Start from the alpine image
FROM devopsdockeruh/simple-web-service:alpine
# When running Docker run the command will be ./curler.sh and execute the script
CMD server