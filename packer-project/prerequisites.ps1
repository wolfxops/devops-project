# Instalează aici toate prerechizitele necesare pentru aplicația ta
# Exemplu: Instalează .NET Core, IIS, etc.

# Instalare .NET Core
Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile $env:TEMP/dotnet-install.ps1 -UseBasicParsing
. $env:TEMP/dotnet-install.ps1 -Channel Current -InstallDir $env:ProgramFiles\dotnet