# Save a transcript to prove we ran
Start-Transcript -Path "C:\Windows\AutopilotTOU.log" -Append -Force

# Get the saved local storage from the TOU page
$path = "C:\Users\defaultuser0\AppData\Local\Packages\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\AC\Microsoft\Internet Explorer\DOMStore"
Write-Host "Checking path $path for: termsofuse*.xml"
Push-Location $path
$localStorage = Get-ChildItem -Path termsofuse*.xml -Recurse -Force
Write-Host "Local storage path: $localStorage"
[xml] $vars = Get-Content -LiteralPath $localStorage
$timeZoneId = $vars.root.item.value

# Set the time zone
Write-Host "Setting time zone to $timeZoneId"
Set-TimeZone -Id $timeZoneId

Stop-Transcript
