
@echo off
cls
cd\
cd C:\Windows\Microsoft.NET\Framework64\v4.0.30319\
msbuild D:\WorkFolder\700Code\700Store\Publish\TestServer\700Store.Web.TestRelease.sln /p:DeployOnBuild=true /p:PublishProfile=Release.pubxml /p:Configuration=Release
pause
rd /s /q d:\Publish.Store.Test.Diff
md d:\Publish.Store.Test.Diff
set /p lastModify=<d:\test.last.publish.date.txt
xcopy d:\Publish.Store.Test\*.* d:\Publish.Store.Test.Diff /e /s /i /EXCLUDE:d:\excludelist.txt /d:%lastModify% /y 
pause
