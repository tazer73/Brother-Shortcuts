# Use this to connect to your networked printer to grab and unpack your edpk file.

$networkname = Read-Host -Prompt "Enter an IP address or node name"
$workingdir = Read-Host -Prompt "Please enter the file path along with your name for the file (C:\Users\User\test.edpk)"
$password = Read-Host -Prompt "Please enter the password"
$settingcmdpath = Join-Path $env:ProgramFiles "SettingCommand\settingcmd.exe"
$ipRegex = "^(\d{1,3}\.){3}\d{1,3}$"
$nodeRegex = "^[a-zA-Z0-9\-]+$"

if ($networkname -match $ipRegex) {
    & "$settingcmdpath" retrieve --ip "$networkname" --o "$workingdir" --password "$password"
} elseif ($networkname -match $nodeRegex) {
    & "$settingcmdpath" retrieve --node "$networkname" --o "$workingdir" --password "$password"
} else {
    Write-Host "Invalid input."
    Pause
    exit
}
& "$settingcmdpath" unpack --file "$workingdir" --unpackdir (Split-Path $workingdir -Parent) --password "$password"