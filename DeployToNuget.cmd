REM ON FIRST RUN, RUN THIS (change the key to whatever is found on your profile on www.nuget.org ->   
REM .nuget\NuGet.exe setapikey e39ea-get-the-full-key-on-nuget.org

call CreateNuget.cmd
.nuget\NuGet.exe push nuget_packages\StatePrinter.2.0.*.nupkg
.nuget\NuGet.exe push nuget_packages\StatePrinter.2.0.*.symbols.nupkg

cd nuget_packages
del /q *
cd ..
rmdir nuget_packages

pause 