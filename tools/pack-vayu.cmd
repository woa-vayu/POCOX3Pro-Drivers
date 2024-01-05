@echo off
rmdir /Q /S ..\..\Vayu-Drivers-Release
mkdir ..\..\Vayu-Drivers-Release

echo @echo off > ..\OnlineUpdater_huaxing.cmd
echo DriverUpdater.%%PROCESSOR_ARCHITECTURE%%.exe -r . -d .\definitions\Desktop\ARM64\Internal\vayu_huaxing.xml >> ..\OnlineUpdater_huaxing.cmd

echo @echo off > ..\OfflineUpdater_huaxing.cmd
echo set /P DrivePath=Enter Drive letter ^^^(with the semi-column!^^^) of the connected device in mass storage mode ^^^(e.g. D:^^^): >> ..\OfflineUpdater_huaxing.cmd
echo DriverUpdater.%%PROCESSOR_ARCHITECTURE%%.exe -r . -d .\definitions\Desktop\ARM64\Internal\vayu_huaxing.xml -p %%DrivePath%% >> ..\OfflineUpdater_huaxing.cmd

echo @echo off > ..\OnlineUpdater_tianma.cmd
echo DriverUpdater.%%PROCESSOR_ARCHITECTURE%%.exe -r . -d .\definitions\Desktop\ARM64\Internal\vayu_tianma.xml >> ..\OnlineUpdater_tianma.cmd

echo @echo off > ..\OfflineUpdater_tianma.cmd
echo set /P DrivePath=Enter Drive letter ^^^(with the semi-column!^^^) of the connected device in mass storage mode ^^^(e.g. D:^^^): >> ..\OfflineUpdater_tianma.cmd
echo DriverUpdater.%%PROCESSOR_ARCHITECTURE%%.exe -r . -d .\definitions\Desktop\ARM64\Internal\vayu_tianma.xml -p %%DrivePath%% >> ..\OfflineUpdater_tianma.cmd

copy DriverUpdater.ARM64.exe ..\
copy DriverUpdater.AMD64.exe ..\
copy DriverUpdater.X86.exe ..\

echo apps\IPA\Dialer > filelist_vayu.txt
echo apps\IPA\Chat >> filelist_vayu.txt
echo apps\IPA\Frameworks >> filelist_vayu.txt
echo CODE_OF_CONDUCT.md >> filelist_vayu.txt
echo components\ANYSOC\Changelog >> filelist_vayu.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.BASE >> filelist_vayu.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_COMPONENTS >> filelist_vayu.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL >> filelist_vayu.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL_EXTRAS >> filelist_vayu.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.VAYU >> filelist_vayu.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_HUAXING >> filelist_vayu.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_TIANMA >> filelist_vayu.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_MINIMAL >> filelist_vayu.txt
echo components\QC8150\Graphics\GRAPHICS.SOC_QC8150.VAYU_DESKTOP >> filelist_vayu.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE >> filelist_vayu.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE_MINIMAL >> filelist_vayu.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BATTERY >> filelist_vayu.txt
echo definitions\Desktop\ARM64\Internal\vayu_huaxing.xml >> filelist_vayu.txt
echo definitions\Desktop\ARM64\Internal\vayu_tianma.xml >> filelist_vayu.txt
echo definitions\Desktop\ARM64\PE\vayu_huaxing.xml >> filelist_vayu.txt
echo definitions\Desktop\ARM64\PE\vayu_tianma.xml >> filelist_vayu.txt
echo definitions\Desktop\ARM64\PE\vayu.xml >> filelist_vayu.txt
echo DriverUpdater.ARM64.exe >> filelist_vayu.txt
echo DriverUpdater.AMD64.exe >> filelist_vayu.txt
echo DriverUpdater.X86.exe >> filelist_vayu.txt
echo LICENSE.md >> filelist_vayu.txt
echo OfflineUpdater_huaxing.cmd >> filelist_vayu.txt
echo OnlineUpdater_huaxing.cmd >> filelist_vayu.txt
echo OfflineUpdater_tianma.cmd >> filelist_vayu.txt
echo OnlineUpdater_tianma.cmd >> filelist_vayu.txt
echo README.md >> filelist_vayu.txt

cd ..
"%ProgramFiles%\7-Zip\7z.exe" a -tzip ..\Vayu-Drivers-Release\Vayu-Drivers-Desktop.zip @tools\filelist_vayu.txt -scsWIN
"%ProgramFiles%\7-Zip\7z.exe" a -t7z ..\Vayu-Drivers-Release\Vayu-Drivers-Desktop.7z @tools\filelist_vayu.txt -scsWIN
cd tools

del ..\OfflineUpdater_huaxing.cmd
del ..\OnlineUpdater_huaxing.cmd
del ..\OfflineUpdater_tianma.cmd
del ..\OnlineUpdater_tianma.cmd
del ..\DriverUpdater.ARM64.exe
del ..\DriverUpdater.AMD64.exe 
del ..\DriverUpdater.X86.exe
del filelist_vayu.txt