@echo off 
REM run this script once to unpack the libraries 
tar -zxf includes.tar.gz 
cd lib 
for %%A in (arm64-v8a armeabi-v7a x86 x86_64) do ( 
    cd %%A 
    for %%Z in (*.zip) do ( 
        tar -xf %%Z 
    ) 
    cd .. 
) 
cd ..\sdk\etc 
tar -zxf haarcascades.tgz 
cd ..\native 
for %%M in (libs staticlibs) do ( 
    cd %%M 
    for %%A in (arm64-v8a armeabi-v7a x86 x86_64) do ( 
        cd %%A 
        for %%Z in (*.zip) do ( 
            tar -xf %%Z 
        ) 
        cd .. 
    ) 
    cd .. 
) 
cd 3rdparty\libs 
for %%A in (arm64-v8a armeabi-v7a x86 x86_64) do ( 
    cd %%A 
    for %%Z in (*.zip) do ( 
        tar -xf %%Z 
    ) 
    cd .. 
) 
cd ..\.. 
