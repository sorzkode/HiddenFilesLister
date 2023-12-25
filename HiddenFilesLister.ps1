'''
HiddenFilesLister.ps1 v1.0
12/25/2023

PowerShell script that lists all hidden files in a directory

Author: Mister Riley
GitHub: https://github.com/sorzkode

MIT License
'''

Write-Host "Welcome to the Hidden Files Lister script!"
Write-Host "This script allows you to list all hidden files and folders in a directory."
Write-Host "Please follow the instructions below:"

do {
    try {
        # Prompt the user to enter a directory path
        $dir = Read-Host "Enter the directory path"

        # Validate the directory path
        if (-not (Test-Path -Path $dir -PathType Container)) {
            throw "Invalid directory path: $dir"
        }

        # Set the path to search for hidden files and folders
        $path = Join-Path -Path $dir -ChildPath "*"

        # Use the Get-ChildItem cmdlet to get all hidden files and folders in the specified directory
        $hiddenItems = Get-ChildItem -Path $path -Attributes Hidden -Force

        # Check if there are hidden files and folders
        if ($hiddenItems.Count -eq 0) {
            Write-Output "No hidden files or folders found in $dir."
        }
        else {
            # Loop through the hidden files and folders and print their names to the console
            foreach ($item in $hiddenItems) {
                Write-Output $item.FullName
            }
        }
    }
    catch {
        Write-Output "An error occurred: $_"
    }

    # Prompt the user to select Y/N to search for hidden files and folders in another directory or exit the script
    $choice = Read-Host "Do you want to search for hidden files and folders in a different directory? (Y/N)"

    if ($choice -eq "Y") {
        continue
    }
    else {
        break
    }
} while ($true)