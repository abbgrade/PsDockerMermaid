@{
    RootModule = 'PsDockerMermaid.psm1'
    ModuleVersion = '0.1.0'
    GUID = '4509c1e9-4363-48ca-a874-8860d3985abc'
    Author = 'Steffen Kampmann'
    Copyright = '(c) 2021 s.kampmann. Alle Rechte vorbehalten.'
    Description = 'PowerShell wrapper for mmdc / mermaid-cli.'
    PrivateData = @{
        PSData = @{
            Prerelease = 'beta'
            Tags = @('mmdc', 'mermaid')
            LicenseUri = 'https://github.com/abbgrade/PsDockerMermaid/blob/master/LICENSE'
            ProjectUri = 'https://github.com/abbgrade/PsDockerMermaid'
        }
    }
    DefaultCommandPrefix = 'Mermaid'
    RequiredModules = @{ ModuleName='psdocker'; RequiredVersion='1.6.0' }
}
