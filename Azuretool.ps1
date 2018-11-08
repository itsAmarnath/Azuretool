Function(azuretool)
{
if ((Get-Module -ListAvailable -Name Azure) -and (Get-Module -ListAvailable -Name Azurerm)) {Import-Module Azure,AzureRM}
 elseif($PSVersionTable.PSVersion.Major -gt 4) { Write-host "Required powershell module not found.Do you want install Azure modules (Internet connection required)? [Y] Yes  [N] No"
 while("y","n" -notcontains $input1 ){ $input1 = Read-Host "Please enter your response (Y/N)"}
 switch ($input1) {Y {Install-Module Azure,AzureRm
 Write-Output "Modules installed , please execute the script again" }}
  switch ($input1) {N { Write-Host "Powershell modules 'Azure' and/or 'AzureRM' unavailable. Please install required modules using commands '" -Foregroundcolor Red -NoNewline; Write-host "Install-Module Azure -Force" -Foregroundcolor Green -nonewline; write-host "' and '" -Foregroundcolor Red -NoNewline; Write-host "Install-Module AzureRM -Force" -ForegroundColor Green -nonewline ; write-host "'" -ForegroundColor Red
        Throw 'Required modules not found error'}}}
 else { $PSVersionTable.PSVersion;
 Write-Host "Your Powershell version is incompatible"
 Throw "Incompatible powershell found: Please install latest PowerShell package" }
 cls; write-host "Login to your Azure account";login-azurermaccount

do{
write-host "


1.Get Subscriptions" -NoNewline -foregroundcolor Green; write-host "         2.Change Subscription" -nonewline -foregroundcolor yellow; Write-host "      3.Remove subscription" -foregroundcolor red
write-host "4.Get Resource Group" -nonewline -ForegroundColor Green; write-host "        5.Add Resource Group" -nonewline -foregroundcolor yellow; write-host "       6.Delete Resource Group" -foregroundcolor red
write-host "7.Get vNet information" -nonewline -ForegroundColor Green; write-host "      9.Add vNet" -nonewline -foregroundcolor yellow; write-host "                 10.Delete vNet" -foregroundcolor red
write-host "11.Get VM information" -nonewline -ForegroundColor Green; write-host "       12.Add VM"-nonewline -foregroundcolor yellow;  write-host "                  13.Delete VM" -foregroundcolor red
write-host "14.Start VM" -nonewline -ForegroundColor Green; write-host "                 15.Shutdown VM" -nonewline -foregroundcolor yellow; write-host "             16.Stop VM" -foregroundcolor red
write-host "17.Get Storage information"-nonewline -ForegroundColor Green;  write-host "  18.Add storage account" -nonewline -foregroundcolor yellow; write-host "     19. Delete storage " -foregroundcolor red
write-host "                 20.Azure pricing"
write-host "Press 0 to EXIT 
" -BackgroundColor DarkYellow
$input=Read-host 'Provide your input'
switch($input){
1{write-host "
Your subscription is '(Get-subscription)'"}
2{2}
3{3}
4{4}
5{5}
6{6}
7{7}
8{8}
9{9}
10{10}
11{11}
12{12}
13{13}
14{14}
15{15}
16{16}
17{17}
18{18}
19{19}
20{20}
}
}
while ($input -ne '0')
}