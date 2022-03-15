@echo off & setlocal

for /F "tokens=1,2,3 delims=." %%a in ("%1") do (
   set Major=%%a
   set Minor=%%a.%%b
   set Patch=%%a.%%b.%%c
)

echo Releasing "%Patch%" version
pause

git commit -a -m "version %Patch%"
git push
git tag %Patch%
git push --tags
docker build -t staticpages/cli:%Patch% .
docker image tag staticpages/cli:%Patch% staticpages/cli:%Minor%
docker image tag staticpages/cli:%Patch% staticpages/cli:%Major%
docker image tag staticpages/cli:%Patch% staticpages/cli:latest
docker push staticpages/cli:%Patch%
docker push staticpages/cli:%Minor%
docker push staticpages/cli:%Major%
docker push staticpages/cli:latest
