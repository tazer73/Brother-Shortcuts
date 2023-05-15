$jsonFilePath = "C:\Users\mkielnik\Documents\Testing\Dump1\setting.json"
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
    #"Numbers from the previous line: $previousLineNumbers"
} else {
    Write-Host "No numbers found in the previous line."
}

