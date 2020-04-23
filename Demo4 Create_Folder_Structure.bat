@ECHO OFF

Set dir=e:\Demo_Regression\
Echo Deleting all files from %dir%
del %dir%\* /F /Q

Echo Deleting all folders from %dir%
for /d %%p in (%dir%\*) Do rd /Q /S "%%p"
@echo Folder deleted.

mkdir e:\Demo_Regression\demo_output_AFP\demo_TestFiles\
mkdir e:\Demo_Regression\demo_output_PDF\demo_TestFiles\
mkdir e:\Demo_Regression\demo_output_TIFF\demo_MF\
mkdir c:\Users\Administrator\Transforms\Logs\Demo\


xcopy /t e:\demo_TestFiles e:\Demo_Regression\demo_output_AFP\demo_TestFiles\
xcopy /t e:\demo_TestFiles e:\Demo_Regression\demo_output_PDF\demo_TestFiles\
xcopy /t e:\demo_TestFiles e:\Demo_Regression\demo_output_TIFF\demo_MF\


exit
