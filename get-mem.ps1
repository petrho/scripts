Get-VM stgwebapp01 | Select Name,@{N='VMHost';E={$_.VMHost.Name}},NumCpu,MemoryGB,UsedSpaceGB 
Get-VM stgwebapp01 | Select Name,@{N='VMHost';E={$_.VMHost.Name}},NumCpu,MemoryGB,VMHost  

Get-Stat -Entity (Get-vm "stgwebapp01")
Get-VM stgwebapp01 | Get-Stat -Stat mem.usage.average



#| Export-Csv report.csv -NoTypeInformation -UseCulture
