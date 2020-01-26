$test = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" | Select-Object -Property DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize
$test2 = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" | Select-Object -Property DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize
$test3 = Get-ItemProperty -Path "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*" | Select-Object -Property DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize
$test = $test + $test2 + $test3
