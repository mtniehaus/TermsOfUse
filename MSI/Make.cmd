:: Clean output directories
rmdir obj\Debug /s /q
rmdir bin\Debug /s /q

:: Compile and link
"%Wix%\bin\candle.exe" -out obj\Debug\ -arch x64 Product.wxs
"%Wix%\bin\light.exe" -out bin\Debug\AutopilotTOU.msi obj\Debug\Product.wixobj -ext WixUtilExtension.dll
