@echo off


      SET HOUR=%time:~0,2%
      SET dtStamp9=%date:~-2%%date:~4,2%%date:~7,2%-0%time:~1,1%%time:~3,2%
      SET dtStamp24=%date:~-2%%date:~4,2%%date:~7,2%-%time:~0,2%%time:~3,2%

      if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)


title [220X.%dtStamp%.prerelease] [Build preparation] [Packing Binaries]
rmdir /Q /S ..\..\Vayu-Drivers-Release
REM mkdir ..\..\Vayu-Drivers-Release

mkdir Vayu-Drivers-Full\components\ANYSOC\Support && mkdir Vayu-Drivers-Full\components\QC8150\Graphics && mkdir Vayu-Drivers-Full\components\QC8150\Device
mkdir Vayu-Drivers-Full\definitions\Desktop\ARM64\Internal && mkdir Vayu-Drivers-Full\definitions\Desktop\ARM64\PE
xcopy /cheriky ..\components\ANYSOC\Changelog Vayu-Drivers-Full\components\ANYSOC\Changelog
xcopy /cheriky ..\components\ANYSOC\Support\Desktop Vayu-Drivers-Full\components\ANYSOC\Support\Desktop
xcopy /cheriky ..\components\QC8150\Platform Vayu-Drivers-Full\components\QC8150\Platform
xcopy /cheriky ..\components\QC8150\Graphics\GRAPHICS.SOC_QC8150.VAYU_DESKTOP Vayu-Drivers-Full\components\QC8150\Graphics\GRAPHICS.SOC_QC8150.VAYU_DESKTOP
xcopy /cheriky ..\components\QC8150\Device\DEVICE.SOC_QC8150.VAYU Vayu-Drivers-Full\components\QC8150\Device\DEVICE.SOC_QC8150.VAYU
xcopy /cheriky ..\components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_HUAXING Vayu-Drivers-Full\components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_HUAXING
xcopy /cheriky ..\components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_TIANMA Vayu-Drivers-Full\components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_TIANMA
xcopy /cheriky ..\components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_MINIMAL Vayu-Drivers-Full\components\QC8150\Device\DEVICE.SOC_QC8150.VAYU_MINIMAL
xcopy /cheriky ..\definitions\Desktop\ARM64\Internal\vayu*.txt Vayu-Drivers-Full\definitions\Desktop\ARM64\Internal
xcopy /cheriky ..\definitions\Desktop\ARM64\PE\vayu*.txt Vayu-Drivers-Full\definitions\Desktop\ARM64\PE
rmdir /S /Q Vayu-Drivers-Full\components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.BASE_ZETA_TEMP
rmdir /S /Q Vayu-Drivers-Full\components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.SURFACE_EXTRAS
rmdir /S /Q Vayu-Drivers-Full\components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_BRIDGE
rmdir /S /Q Vayu-Drivers-Full\components\QC8150\Platform\PLATFORM.SOC_QC8150.BATTERY_SURFACE

"%ProgramFiles%\7-zip\7z.exe" a -t7z -mx9 -r ..\..\Vayu-Drivers-Release\Vayu-Drivers-Full.7z Vayu-Drivers-Full\*
"%ProgramFiles%\7-zip\7z.exe" a -tzip -mx9 -r ..\..\Vayu-Drivers-Release\Vayu-Drivers-Full.zip Vayu-Drivers-Full\*

REM move /Y Vayu-Drivers-Full.7z ..\..\Vayu-Drivers-Release\
REM move /Y Vayu-Drivers-Full.zip ..\..\Vayu-Drivers-Release\

rmdir /Q /S Vayu-Drivers-Full