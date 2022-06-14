Invoke-RestMethod -Uri ('http://ipinfo.io/'+(Invoke-WebRequest -uri "http://ifconfig.me/ip").Content)
 $logdir = "c:\GetIPPSlog"
[String]$time = Get-Date
$logLine = $time  
if (Test-path -Path $logdir) {
    $logLine | Out-File -Filepath $logdir\execLog.log -Append
} ELSE {
       mkdir "c:\GetIPPSlog"
    $logLine | Out-File -Filepath $logdir\execLog.log
}
