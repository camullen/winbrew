$WINBREW_ROOT =  "$ENV:LOCALAPPDATA\Winbrew"
$TMP_DIR = "$WINBREW_ROOT\Temp"
md -Force -Path $WINBREW_ROOT
md -Force -Path $TMP_DIR


$LEGACY_7Z_URL = 'http://www.7-zip.org/a/7za920.zip'
Invoke-WebRequest -Uri $LEGACY_7Z_URL -OutFile "$TMP_DIR\7za.zip"
Expand-Archive -Path "$TMP_DIR\7za.zip" -DestinationPath "$TMP_DIR\7za"

Write-Host "Hello Winbrew"