@echo off

set IMAGE=vsc-web-uwp
set VERSION=v1
set PREFIX=thienptran/

docker build -m 8G -f Dockerfile.vsc-web-uwp -t %PREFIX%%IMAGE%:%VERSION% .
docker push %PREFIX%%IMAGE%:%VERSION%
docker tag %PREFIX%%IMAGE%:%VERSION% %PREFIX%%IMAGE%:latest
