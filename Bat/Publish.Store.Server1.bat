
@echo off
cls
cd\
cd C:\Windows\Microsoft.NET\Framework64\v4.0.30319\
msbuild D:\WorkFolder\700Code\700Store\Publish\Server1\700Store.Web.TestRelease.sln /p:DeployOnBuild=true /p:PublishProfile=Release.pubxml /p:Configuration=Release
pause
rd /s /q d:\Publish.Store.Server1.Diff
md d:\Publish.Store.Server1.Diff
set /p lastModify=<d:\test.last.publish.date.txt
xcopy d:\Publish.Store.Server1\*.* d:\Publish.Store.Server1.Diff /e /s /i /EXCLUDE:d:\excludelist.txt /d:%lastModify% /y 
pause
