echo off

set submition_tool=c:\Users\Administrator\Transforms
echo %submition_tool%

set folderPDF=e:\demo_TestFiles\PDF\

echo =============    Transform files from dir and subdir of : %folderPDF% ======================================

set /p demo_itm_ipaddress=< %c:\Users\Administrator\Transforms\demo_itm_ipaddress%
echo %demo_itm_ipaddress%

echo ++++test1

for /R %folderPDF% %%i in (*.pdf) do (

echo +++++pass
echo processing.......... %%i

ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi
echo ===============  Working Transform script is:.......... %cd% 

echo ================================================

echo ===============  APPE Transform with default configuration =======================

echo %submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.CPSI.afp" -s8012
%submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.CPSI.afp" -s8012 


echo ===============  APPE COLOR Transform with default configuration =======================

echo %submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.CPSI.color.afp" -s8012
%submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.CPSI.color.afp" -s8012 


echo ================================================
 ) >> C:\Users\Administrator\Transforms\Logs\Demo\demo_pdf2afpCPSI_itm-driver.log 2>&1


echo EXIT
echo EXIT