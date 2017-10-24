set /p lastModify=<d:\debug.last.publish.date.txt
xcopy d:\Publish.Store.Debug\*.* d:\Publish.Store.Debug.Diff /e /s /i /EXCLUDE:d:\excludelist.txt /d:%lastModify% /y 
pause


