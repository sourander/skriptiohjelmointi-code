# Define the path to the file
$filePath = "/skriptiohjelmointi/hello_from_docker.txt"

# Create the file and write "Hello world!" to it
"Hello world!" | Out-File -FilePath $filePath -Encoding utf8

# Optional: Output a confirmation message
Write-Host "File created at $filePath with content: 'Hello world!'"
