task InstallBuildDependencies -Jobs {
    Install-Module platyPs -Scope CurrentUser -ErrorAction Stop -Verbose
    Install-Module psdocker -Scope CurrentUser -ErrorAction Stop -Verbose
}

task InstallTestDependencies -Jobs {
    Install-Module psdocker -Scope CurrentUser -ErrorAction Stop -Verbose
}

task InstallReleaseDependencies -Jobs {
    Install-Module psdocker -Scope CurrentUser -ErrorAction Stop -Verbose
}
