#SYNTAX
#    Get-Process [[-Name] <string[]>] [-ComputerName <string[]>] [-Module] [-FileVersionInfo]  [<CommonParameters>]
#    Get-Process [[-Name] <string[]>] -IncludeUserName  [<CommonParameters>]
#    Get-Process -Id <int[]> -IncludeUserName  [<CommonParameters>]
#    Get-Process -Id <int[]> [-ComputerName <string[]>] [-Module] [-FileVersionInfo]  [<CommonParameters>]
#    Get-Process -InputObject <Process[]> -IncludeUserName  [<CommonParameters>]
#    Get-Process -InputObject <Process[]> [-ComputerName <string[]>] [-Module] [-FileVersionInfo]  [<CommonParameters>]

# https://msdn.microsoft.com/cs-CZ/library/system.diagnostics.process_properties.aspx

get-Process TOTALCMD |select *
get-Process  |select *

get-Process |select Name,WorkingSet,PrivateMemorySize,VirtualMemorySize,UserProcessorTime,TotalProcessorTime | ft
