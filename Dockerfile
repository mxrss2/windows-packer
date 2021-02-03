ARG version=20H2
FROM mcr.microsoft.com/windows/servercore:$version

ENV SCOOP "C:\scoop"
ENV SCOOP_HOME "C:\scoop\apps\scoop\current"

RUN powershell.exe -NoLogo -Command "$script = iwr -UseBasicParsing 'https://raw.githubusercontent.com/lukesampson/scoop/master/bin/install.ps1'; iex $script.Content; scoop install sudo innounp lessmsi dark packer"
ENTRYPOINT packer