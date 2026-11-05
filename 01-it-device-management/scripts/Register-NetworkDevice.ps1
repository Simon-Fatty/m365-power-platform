<#
.SYNOPSIS
Registrerar en nätverksenhet, till exempel en skrivare, via ett Power Automate-flöde.

.DESCRIPTION
Flödets URL innehåller en signatur (sig=) som fungerar som ett lösenord. Ange den
med -FlowUrl eller i miljövariabeln NETWORKDEVICE_FLOW_URL, aldrig i skriptet.

.EXAMPLE
.\Register-NetworkDevice.ps1 -Namn "HP-LaserJet-Demoskrivare" -IpAdress "192.168.1.55" `
    -Modell "HP LaserJet Pro M404" -Plats "Plan 3 Demosal" -AntalSidor 500
#>
param(
    [string]$FlowUrl = $env:NETWORKDEVICE_FLOW_URL,
    [string]$Namn = "HP-LaserJet-Demoskrivare",
    [string]$IpAdress = "192.168.1.55",
    [string]$Modell = "HP LaserJet Pro M404",
    [string]$Plats = "Plan 3 Demosal",
    [int]$AntalSidor = 500
)

if ([string]::IsNullOrWhiteSpace($FlowUrl)) {
    Write-Error "Ange flödets URL med -FlowUrl eller i miljövariabeln NETWORKDEVICE_FLOW_URL."
    exit 1
}

$body = @{
    skrivarnamn = $Namn
    ip_adress   = $IpAdress
    modell      = $Modell
    plats       = $Plats
    antal_sidor = $AntalSidor
} | ConvertTo-Json

Invoke-RestMethod -Uri $FlowUrl -Method Post -Body $body -ContentType "application/json; charset=utf-8"

Write-Host "Klar: $Namn"
