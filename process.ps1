param(
    [Parameter(Mandatory=$True)]
    [string]$computerName
    )
    $credential = Get-Credential

    Invoke-Command -ComputerName $computerName -Credential $credential -ScriptBlock {
        Get-Process
    }