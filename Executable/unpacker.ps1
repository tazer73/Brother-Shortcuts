# If you already have an existing edpk file, use this to unpack it.

$filepath = Read-Host -Prompt "Please enter the file path along with your name for the file (C:\Users\User\test.edpk)"
$outputpath = Read-Host -Prompt "Enter the output path:"
$password = Read-Host -Prompt "Please enter the password"
$settingcmdpath = "C:\Program Files\SettingCommand\settingcmd.exe"

& "$settingcmdpath" unpack --file "$filepath" --unpackdir "$outputpath" --password "$password"

Pause
