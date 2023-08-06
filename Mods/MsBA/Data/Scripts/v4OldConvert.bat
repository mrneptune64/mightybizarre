@echo off
echo Deleting residual error files...
del /S *.new 1>nul
echo Converting all files...
for /r %%v in (*.txt) do RSDKScriptConverter v4Old v4 "%%v" "%%v.new"
echo Fixing converted files...
del /S *.txt 1>nul
for /r %%x in (*.txt.new) do ren "%%x" *.
echo Done. Check for errors.
pause