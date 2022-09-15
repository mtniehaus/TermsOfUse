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

# Set the time zone directly
Write-Host "Setting time zone to $timeZoneId"
Set-TimeZone -Id $timeZoneId

# In case OOBE overwrites the time zone (seems timing-dependent), write the same value to oobe.xml so msoobe.exe will set the right thing
Write-Host "Writing C:\Windows\System32\Oobe\Info\oobe.xml with the time zone ID $timeZoneId"
$oobeXml = @"
<FirstExperience>
  <oobe>
    <defaults>
      <timezone>$timeZoneId</timezone>
    </defaults>
  </oobe>
</FirstExperience>
"@
if (-not (Test-Path "C:\Windows\System32\Oobe\Info")) {
    Write-Host "Creating C:\Windows\System32\Oobe\Info"
    MkDir "C:\Windows\System32\Oobe\Info" | Out-Null
}
$oobeXml | Out-File "C:\Windows\System32\Oobe\Info\oobe.xml" -Force -Encoding utf8

Stop-Transcript
