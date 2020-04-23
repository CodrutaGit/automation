echo off

set submition_tool=c:\Users\Administrator\Transforms
echo %submition_tool%

set all_folders=e:\demo_Regression
echo =============    Transform files from dir and subdir of : %all_folders% ======================================
set /p demo_itm_ipaddress=< %c:\Users\Administrator\Transforms\demo_itm_ipaddress%
echo %demo_itm_ipaddress%
for /R %all_folders% %%i in (*.afp ) do (
echo processing.......... %%i
ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi

echo ===============  Working Transform script is:.......... %cd% =====================

echo ===============   Transform all AFP resulted from all Transforms to PDF =======================

echo %submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files  e:\%%~pi\%%~ni.pdf" -s8040
%submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files  e:\%%~pi\%%~ni.pdf" -s8040 
 ) >> C:\Users\Administrator\Transforms\Logs\Demo\demo_all_afp2pdf_itm-driver.log 2>&1

echo ================================================


echo Copy.... e:\demo_Regression\demo_output_AFP\demo_TestFiles\*.pdf e:\demo_Regression\demo_output_PDF\demo_TestFiles\  
xcopy /y /s /d  e:\demo_Regression\demo_output_AFP\demo_TestFiles\*.pdf e:\demo_Regression\demo_output_PDF\demo_TestFiles\ >> C:\Users\Administrator\Transforms\Logs\Demo\demo_all_afp2pdf_itm-driver.log 2>&1



echo Delete.... e:\demo_Regression\demo_output_AFP\demo_TestFiles\*.pdf   
del /q /s e:\demo_Regression\demo_output_AFP\demo_TestFiles\*.pdf

echo EXIT
echo EXIT