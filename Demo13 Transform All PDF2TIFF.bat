echo off

set gs="C:\Program Files\gs\gs9.27\bin\"
echo %gs%
set folderIN=e:\demo_Regression\demo_output_PDF\demo_TestFiles\
echo %folderIN%

for /R %folderIN% %%i in (*.pdf) do (

ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi

   echo processing... %%i 
   echo "c:\Program Files\gs\gs9.27\bin\gswin64c.exe" -dNOPAUSE -q -sDEVICE=tiffg4 -dBATCH -sOutputFile=e:\%%~pi\%%~ni.tif %%i
  "c:\Program Files\gs\gs9.27\bin\gswin64c.exe" -dNOPAUSE -q -sDEVICE=tiffg4 -dBATCH -sOutputFile=e:\%%~pi\%%~ni.tif %%i
  echo ========================  

 ) >> C:\Users\Administrator\Transforms\Logs\Demo\demo_all_PDF2TIFF_itm-driver.log 2>&1


echo ================================================


echo Copy.... e:\demo_Regression\demo_output_PDF\demo_TestFiles\*.tif e:\demo_Regression\demo_output_TIFF\demo_MF\  
xcopy /y /s /d  e:\demo_Regression\demo_output_PDF\demo_TestFiles\*.tif e:\demo_Regression\demo_output_TIFF\demo_MF\ >> C:\Users\Administrator\Transforms\Logs\Demo\demo_all_PDF2TIFF_itm-driver.log 2>&1



echo Delete.... e:\demo_Regression\demo_output_PDF\demo_TestFiles\*.tif   
del /q /s e:\demo_Regression\demo_output_PDF\demo_TestFiles\*.tif

echo EXIT
echo EXIT