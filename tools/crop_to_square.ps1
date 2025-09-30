Add-Type -AssemblyName System.Drawing
$src = 'd:\Happy-Birthday-Card-main\local\sample-pic.jpg'
$dst = 'd:\Happy-Birthday-Card-main\local\sample-pic.jpeg'
if (-Not (Test-Path $src)) { Write-Host "Source not found: $src"; exit 1 }
$img = [System.Drawing.Image]::FromFile($src)
$size = [System.Math]::Min($img.Width, $img.Height)
$x = [int](($img.Width - $size) / 2)
$y = [int](($img.Height - $size) / 2)
$bmp = New-Object System.Drawing.Bitmap $size, $size
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.DrawImage($img, 0, 0, $size, $size)
$bmp.Save($dst, [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g.Dispose()
$img.Dispose()
$bmp.Dispose()
Write-Host "Saved cropped file: $dst"
$img2 = [System.Drawing.Image]::FromFile($dst)
Write-Host ("New dimensions: {0} x {1}" -f $img2.Width, $img2.Height)
$img2.Dispose()
