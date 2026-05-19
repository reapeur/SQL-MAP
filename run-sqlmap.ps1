param(
    [Parameter(ValueFromRemainingArguments=$true)]
    [string[]]$Args
)

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
python "$scriptDir\sqlmap\sqlmap.py" @Args
