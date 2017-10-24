@echo off
cls
cd\
cd C:\Windows\Microsoft.NET\Framework64\v4.0.30319\
msbuild D:\WorkFolder\700Code\700Store\StoreCode\700Store.Web.sln /p:DeployOnBuild=true /p:PublishProfile=Debug.pubxml /p:Configuration=Debug
rd /s /q d:\Publish.Store.Debug.Diff
md d:\Publish.Store.Debug.Diff
set /p lastModify=<d:\debug.last.publish.date.txt
xcopy d:\Publish.Store.Debug\*.* d:\Publish.Store.Debug.Diff /e /s /i /EXCLUDE:d:\excludelist.txt /d:%lastModify% /y 
pause


