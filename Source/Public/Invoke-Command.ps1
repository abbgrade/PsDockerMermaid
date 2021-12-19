function Invoke-Command {

    <#

    .SYNOPSIS
    Execute mmdc command.

    .DESCRIPTION
    Converts a mermaid diagram (mmd) from text into graphic (e.g. svg).

    .EXAMPLE
    PS C:\> @"
    >> graph TD
    >>     A[Client] --> B[Load Balancer]
    >> "@ | Invoke-MermaidCommand

    <svg id="mermaid-1639919827409" width="100%" xmlns="http://www.w3.org/2000/svg" ...

    #>

    [CmdletBinding()]
    param (

        # Specifies the mermaid diagram definition as string.
        [Parameter( Mandatory, ValueFromPipeline )]
        [ValidateNotNullOrEmpty()]
        [string] $InputString,

        # Specifies the output type.
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string] $Type = 'svg'
    )

    $tempData = New-Item -ItemType Directory -Path (Join-Path ([System.IO.Path]::GetTempPath()) ([System.Guid]::NewGuid()))

    $InputString | Out-File ( Join-Path $tempData 'input.mmd' )

    $output = New-DockerContainer -Interactive -Terminal -Remove -Volumes @{
        $tempData = '/data'
    } -ImageName 'minlag/mermaid-cli' -ArgumentList @(
        '--input', "/data/input.mmd",
        '--output', "/data/output.$Type"
        ) -StringOutput -ErrorAction Stop -Verbose:$VerbosePreference

    Write-Verbose $output

    Get-Content ( Join-Path $tempData "output.$Type" ) -Raw | Write-Output
}
