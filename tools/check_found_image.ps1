Add-Type -AssemblyName System.Drawing
$path = 'd:\Happy-Birthday-Card-main\local\sample-pic.jpg'
if (-Not (Test-Path $path)) { Write-Host "File not found: $path"; exit 1 }
$img = [System.Drawing.Image]::FromFile($path)
Write-Host "File: $path"
Write-Host ("Dimensions: {0} x {1}" -f $img.Width, $img.Height)
$img.Dispose()
