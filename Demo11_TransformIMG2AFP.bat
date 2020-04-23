echo off

set submition_tool=c:\Users\Administrator\Transforms
echo %submition_tool%

set folderIMAGES=e:\demo_TestFiles\IMAGES\   

echo =============    Transform files from dir and subdir of : %folderIMAGES% ======================================

set /p demo_itm_ipaddress=< %c:\Users\Administrator\Transforms\demo_itm_ipaddress%
echo Transform Server IP_Addres is *******: %demo_itm_ipaddress%


for /R %folderIMAGES% %%i in (*.tiff, *.tif, *.gif, *.jpg, *.jpeg ) do (

echo processing.......... %%i

ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi


echo ===============  Working Transform script is:.......... %cd% 

echo ================================================
echo ================================================

echo ===============  IMAGE Transform with default configuration =======================

echo %submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.afp" -s8000
%submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.afp" -s8000 
echo ================================================

echo =============== Color IMAGE Transform  =======================

echo %submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.color.afp" -s8000
%submition_tool%\itm_driver.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files e:\demo_Regression\demo_output_AFP\%%~pi\%%~ni.color.afp" -s8000 
echo ================================================



 ) >> C:\Users\Administrator\Transforms\Logs\Demo\demo_IMAGE_Transform_itm-driver.log 2>&1


echo EXIT
echo EXIT