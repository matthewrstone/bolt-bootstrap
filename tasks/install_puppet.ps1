Param(
  $master
)
[Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}
$webClient = New-Object System.Net.WebClient
$webClient.DownloadFile("https://${master}:8140/packages/current/install.ps1", 'c:\\windows\\temp\\install.ps1'); & c:\windows\temp\install.ps1 -v