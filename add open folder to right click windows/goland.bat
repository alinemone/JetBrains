@echo off

SET GoLandPath=F:\Program Files\JetBrains\GoLand 2021.3.4\bin\goland64.exe
 
echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\GoLand" /t REG_SZ /v "" /d "Open in GoLand"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\GoLand" /t REG_EXPAND_SZ /v "Icon" /d "%GoLandPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\GoLand\command" /t REG_SZ /v "" /d "%GoLandPath% \"%%1\"" /f
 
echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\GoLand" /t REG_SZ /v "" /d "Open with GoLand"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\GoLand" /t REG_EXPAND_SZ /v "Icon" /d "%GoLandPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\GoLand\command" /t REG_SZ /v "" /d "%GoLandPath% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\GoLand" /t REG_SZ /v "" /d "Open with GoLand"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\GoLand" /t REG_EXPAND_SZ /v "Icon" /d "%GoLandPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\GoLand\command" /t REG_SZ /v "" /d "%GoLandPath% \"%%1\"" /f