# Set-ExecutionPolicy RemoteSigned
# set time to 0.001
for ($i=1; $i -le 10000; $i++) {
    Invoke-WebRequest -Uri "http://localhost:30000" | Out-File -Append -FilePath "output.txt"
    Start-Sleep -Seconds $args[0]
}
