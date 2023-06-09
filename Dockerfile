# Start from the alpine image
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

RUN apt-get update && apt-get upgrade -y

# Install curl via shell command
RUN apt-get -y install curl

# Copy the curler.sh file from this location to /usr/src/app/ creating /usr/src/app/curler.sh.
COPY curler.sh .

# Grant permission to run curler script
RUN chmod +x curler.sh

# When running Docker run the command will be ./curler.sh and execute the script
CMD ./curler.sh