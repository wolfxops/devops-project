# Instalează .NET Core
Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile $env:TEMP/dotnet-install.ps1 -UseBasicParsing
. $env:TEMP/dotnet-install.ps1 -Channel Current -InstallDir $env:ProgramFiles\dotnet

# Compilează aplicația .NET
cd C:\devops-project\HelloWorldApp
dotnet publish -c Release -o C:\app

# Setează variabile de mediu
[Environment]::SetEnvironmentVariable("PATH", "$env:PATH;C:\app", [System.EnvironmentVariableTarget]::Machine)

# Rularea aplicației la pornirea sistemului (poate fi personalizat)
[Environment]::SetEnvironmentVariable("application_to_run", "C:\app\HelloWorldApp.exe", [System.EnvironmentVariableTarget]::Machine)