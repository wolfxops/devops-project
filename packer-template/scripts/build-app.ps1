# Navigate to the directory containing your .NET application
Set-Location -Path "C:\Users\Administrator\HellowWorldApp"

# Run the 'dotnet build' command to build your application
dotnet publish -c Release -o C:\app

[Environment]::SetEnvironmentVariable("PATH", "$env:PATH;C:\app", [System.EnvironmentVariableTarget]::Machine)

[Environment]::SetEnvironmentVariable("application_to_run", "C:\app\HelloWorldApp.exe", [System.EnvironmentVariableTarget]::Machine)
