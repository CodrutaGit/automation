echo off

set submition_tool=c:\Users\Administrator\Transforms
echo %submition_tool%

set folderPOSTSCRIPT=e:\demo_TestFiles\POSTSCRIPT\

echo =============    Transform files from dir and subdir of : %folderPOSTSCRIPT% ======================================

set /p demo_itm_ipaddress=< %c:\Users\Administrator\Transforms\demo_itm_ipaddress%
echo %demo_itm_ipaddress%

echo ++++test1

for /R %folderPOSTSCRIPT% %%i in (*.ps) do (

echo +++++pass
echo processing.......... %%i

ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi
echo ===============  Working Transform script is:.......... %cd% 

echo ================================================

echo ===============  APPE Transform with default configuration =======================

echo %submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.afp" -s8011
%submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.afp" -s8011


echo ===============  APPE COLOR Transform with default configuration =======================

echo %submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.color.afp" -s8011
%submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.color.afp" -s8011 


echo ================================================
 ) >> C:\Users\Administrator\Transforms\Logs\Demo\demo_ps2afp_itm-driver.log 2>&1


echo EXIT
echo EXIT