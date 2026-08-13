$ErrorActionPreference = 'Stop'

$validator = Join-Path $PSScriptRoot 'validate.py'
python $validator
if ($LASTEXITCODE -ne 0) {
    throw 'Cross-platform validator failed'
}

Write-Output 'PowerShell wrapper ok: book-dialogue v0.3.0'
