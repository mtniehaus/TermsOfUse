# Save a transcript to prove we ran
Start-Transcript -Path "C:\Windows\AutopilotTOU.log" -Force

# Get the saved local storage from the TOU page
Push-Location "C:\Users\defaultuser0\AppData\Local\Packages\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\AC\Microsoft\Internet Explorer\DOMStore"
$localStorage = Get-ChildItem -Path termsofuse*.xml -Recurse -Force
[xml] $vars = Get-Content -LiteralPath $localStorage

# Take action based on what it contains
Set-TimeZone -Id $vars.root.item.value

Stop-Transcript
