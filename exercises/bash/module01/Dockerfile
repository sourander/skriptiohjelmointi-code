# We will use simple Ubuntu image to run our BAsh
FROM ubuntu:24.04

# Copy the setup scripts
COPY files-for-docker/ /docker-automation/

WORKDIR /skriptiohjelmointi

# Execute the setup scripts
RUN /docker-automation/setup_that_docker_runs.sh

# RUN echo 'PS1="\W \$ "' >> ~/.bashrc

# Set the entry point to Bash with color prompt
ENTRYPOINT ["/bin/bash"]