#Can be used for searching the address book to find someones ID

$jsonFilePath = "Dump Files\Temp 1\Setting.json"
$searchText = Read-Host "Enter a name"
$previousLineNumbers = $null

# Read the JSON file line by line
Get-Content -Path $jsonFilePath | ForEach-Object {
    if ($_ -match $searchText) {
        # Extract numbers from the previous line
        $previousLineNumbers = [regex]::Matches($prevLine, '\d+').Value
    }
    # Update the previous line for the next iteration
    $prevLine = $_
}

# Use the extracted numbers
if ($previousLineNumbers) {
    Write-Host $previousLineNumbers
} else {
    Write-Host "Name not in adress book."
}

