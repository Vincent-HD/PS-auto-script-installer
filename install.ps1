chcp 65001

$scripts_path = "./scripts"
$install_list = @(
    @{
        Name = "MPV.net"
        Filename = "mpv"
    }
    @{
        Name = "test"
        Filename = "sqdsq"
    }
)
.\utils.ps1 # Utils functions
$install_list.ForEach({
    # Test if file exist (Leaf = is a file)
    if (Test-Path -Path "$scripts_path/$($_.Filename).ps1" -PathType Leaf) {
        # Include file
        Write-Output "Exécution du script $($_.Name) : $scripts_path/$($_.Filename).ps1"
        Invoke-Expression -Command "$scripts_path/$($_.Filename).ps1"
        Write-Output "Fin de l'éxécution du script"
    }
})