#!/bin/bash -e

filePath="/skriptiohjelmointi/hello_from_docker.txt"
echo "Hello world!" > $filePath
echo "File created at $filePath with content: 'Hello world!'"
