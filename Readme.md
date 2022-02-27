# PsDockerMermaid

PowerShell wrapper for [mmdc / mermaid-cli](https://github.com/mermaid-js/mermaid-cli).

## Installation

This module can be installed from [PsGallery](https://www.powershellgallery.com/packages/PsDockerMermaid).

```powershell
Install-Module -Name PsDockerMermaid -Scope CurrentUser
```

Alternatively it can be build and installed from source.

1. Install the development dependencies
2. Download or clone it from GitHub
3. Run the installation task:

```powershell
Invoke-Build Install
```

## Usage

See [the documentation](./Docs) for description and examples.

## Changelog

### 0.1.0

- Added `Invoke-DockerMermaidCommand` command.
