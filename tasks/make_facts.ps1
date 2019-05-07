Param(
    $role,
    $environment
)
If (!(Test-Path "C:\\ProgramData\\PuppetLabs\\puppet\\etc\\csr_attributes.yaml")) { New-Item -Path C:\ProgramData\PuppetLabs\puppet\ -ItemType Directory -Force }

$yaml = @"
---
extension_requests:
  pp_role: ${role}
  pp_environment: ${environment}
"@ | Set-Content -Path C:\ProgramData\PuppetLabs\puppet\etc\\csr_attributes.yaml -Encoding UTF8
