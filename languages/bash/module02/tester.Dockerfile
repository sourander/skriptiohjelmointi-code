# We will use simple Ubuntu image to run our BAsh
FROM ubuntu:24.04

WORKDIR /app/tests

COPY exercises/ /app/exercises/
COPY tests/ /app/tests/

# Install batsunit (installed to /app/tests/lib/bashunit)
RUN apt-get update && apt-get install -y curl \
    && curl -s https://bashunit.typeddevs.com/install.sh | bash


ENTRYPOINT [ "/bin/bash" ]