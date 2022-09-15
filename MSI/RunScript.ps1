# Save a transcript to prove we ran
Start-Transcript -Path "C:\Windows\AutopilotTOU.log" -Force

# Get the saved local storage from the TOU page
$path = "C:\Users\defaultuser0\AppData\Local\Packages\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\AC\Microsoft\Internet Explorer\DOMStore"
Write-Host "Checking path $path for: termsofuse*.xml"
Push-Location $path
$localStorage = Get-ChildItem -Path termsofuse*.xml -Recurse -Force
Write-Host "Local storage path: $localStorage"
[xml] $vars = Get-Content -LiteralPath $localStorage

# Take action based on what it contains
Write-Host "Setting time zone to $($vars.root.item.value)"
Set-TimeZone -Id $vars.root.item.value

Stop-Transcript
