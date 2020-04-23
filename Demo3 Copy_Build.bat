cd c:\Users\Administrator\
mkdir Transforms

cd c:\Users\Administrator\Transforms
mkdir Builds

net use \\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.8.3\ITM_3.8.3-win\cycle1 /u:saguaroprint.ro\cmorariu Passw0rd1234 /p:yes
COPY \\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.8.3\ITM_3.8.3-win\cycle1\*.* c:\Users\Administrator\Transforms\Builds