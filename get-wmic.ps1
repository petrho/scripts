Get-WmiObject -List
Get-WmiObject -Class Win32_Bios

Get-WmiObject -Class Win32_Service | ft

(Get-WmiObject -Class Win32_Service -Filter "name='WinRM'" -ComputerName Server01).StopService()
