Describe 'Invoke-MermaidCommand' {

    BeforeAll {
        Import-Module $PSScriptRoot\..\Source\PsDockerMermaid.psd1 -Force -ErrorAction Stop
    }

    Context 'Diagram' {
        BeforeAll {
            [System.IO.FileInfo] $Script:DiagramFile = Join-Path (Get-PSDrive TestDrive).Root 'test.mmd'
            Set-Content $Script:DiagramFile -value @"
graph TD
    A[Client] --> B[Load Balancer]
"@
        }

        It 'Works' {
            $result = @"
graph TD
    A[Client] --> B[Load Balancer]
"@ | Invoke-MermaidCommand
            $result | Should -Not -BeNullOrEmpty
            $result | Should -Match '<svg*'
        }

        It 'Throws' {
            {
                $result = @"
nonsense
"@ | Invoke-MermaidCommand -Verbose -ErrorAction Stop
            } | Should -Throw
        }
    }
}
