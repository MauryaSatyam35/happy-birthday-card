$src = 'd:\Happy-Birthday-Card-main\local\sample-pic.jpeg'
$dst = 'd:\Happy-Birthday-Card-main\Happy-Birthday-Card-main\local\sample-pic.jpeg'
Copy-Item -Path $src -Destination $dst -Force
$envPath = 'd:\Happy-Birthday-Card-main\Happy-Birthday-Card-main\.env'
Set-Content -Path $envPath -Value "NAME='zeya'`nPIC='sample-pic.jpeg'`nSCROLL_MSG='sample-scroll.txt'" -Force
Get-ChildItem 'd:\Happy-Birthday-Card-main\Happy-Birthday-Card-main\local' | Select-Object Name, Length | Format-Table -AutoSize
