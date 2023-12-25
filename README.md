# Hidden Files Lister

## Overview

Welcome to the Hidden Files Lister script! This PowerShell script allows you to list all hidden files and folders in a specified directory. Use this tool to quickly identify and view hidden items within a chosen directory.

## Instructions

Follow the steps below to run the script:

1. **Download the Script:**
   - Download the script file (`HiddenFilesLister.ps1`) to your local machine.

2. **Run the Script:**
   - Open PowerShell on your machine.
   - Navigate to the directory where you saved the script using the `cd` command.
   - Execute the script by entering `.\HiddenFilesLister.ps1` and pressing Enter.

3. **Input Directory Path:**
   - The script will prompt you to enter the directory path where you want to list hidden files and folders.

4. **Review Results:**
   - The script will display the full paths of hidden files and folders found in the specified directory.

5. **Repeat or Exit:**
   - After viewing the results, you can choose to search for hidden files and folders in another directory by entering 'Y' when prompted.
   - To exit the script, enter 'N' when prompted.

## Important Notes

- Ensure that you have the necessary permissions to access the directories you intend to search.
- Be cautious when modifying or deleting hidden files and folders, as they may be essential for the proper functioning of the operating system and installed applications.

## Example Usage

```powershell
Welcome to the Hidden Files Lister script!
This script allows you to list all hidden files and folders in a directory.
Please follow the instructions below:

Enter the directory path: C:\Users\Username\Documents
C:\Users\Username\Documents\HiddenFile1.txt
C:\Users\Username\Documents\HiddenFolder
C:\Users\Username\Documents\HiddenFolder\NestedHiddenFile.txt

Do you want to search for hidden files and folders in a different directory? (Y/N): Y
Enter the directory path: D:\Projects
No hidden files or folders found in D:\Projects.

Do you want to search for hidden files and folders in a different directory? (Y/N): N
