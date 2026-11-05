<#
.SYNOPSIS
Samlar in hårdvaruinformation om datorn och skickar den till ett Power Automate-flöde.

.DESCRIPTION
Flödet tar emot JSON via triggern "When an HTTP request is received" och sparar
datorn i SharePoint-listan Datorer.

Flödets URL innehåller en signatur (sig=) som fungerar som ett lösenord. Den ska
aldrig skrivas i skriptet eller läggas i ett git-repo. Ange den med -FlowUrl eller
i miljövariabeln INVENTORY_FLOW_URL.

.EXAMPLE
.\Send-DeviceInventory.ps1 -FlowUrl $env:INVENTORY_FLOW_URL
#>
param(
    [string]$FlowUrl = $env:INVENTORY_FLOW_URL
)

if ([string]::IsNullOrWhiteSpace($FlowUrl)) {
    Write-Error "Ange flödets URL med -FlowUrl eller i miljövariabeln INVENTORY_FLOW_URL."
    exit 1
}

$ComputerName = $env:COMPUTERNAME
$SysInfo = Get-CimInstance Win32_ComputerSystem
$Processor = Get-CimInstance Win32_Processor | Select-Object -First 1
$Disk = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"
$Serie = (Get-CimInstance Win32_Bios).SerialNumber

$Data = @{
    Enhetsnamn  = $ComputerName
    Tillverkare = $SysInfo.Manufacturer
    Modell      = $SysInfo.Model
    CPU         = $Processor.Name
    IP          = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike "*Loopback*" }).IPAddress | Select-Object -First 1
    RAM         = [int]($SysInfo.TotalPhysicalMemory / 1GB)
    DiskTotal   = [int]($Disk.Size / 1GB)
    DiskFree    = [int]($Disk.FreeSpace / 1GB)
    Serie       = $Serie
} | ConvertTo-Json

# Skicka datan
Invoke-RestMethod -Uri $FlowUrl -Method Post -Body $Data -ContentType "application/json; charset=utf-8"
