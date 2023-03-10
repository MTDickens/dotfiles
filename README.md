<<<<<<< HEAD
# One-click script for copying dotfiles
=======
:warning:**Warning:** The files aren't configured correctly, so please **don't use them** for now. And I shall fix the problem later.

# Description

These are the collections of my dotfile configurations. Feel free to download and alter.
>>>>>>> a90457f1f102dbc6591f60da11cb8e5a01a38f7d

[中文文档]("README_zh_cn.md")

This bash script can copy specified files from the `dotfiles` folder to the user's home directory and overwrite existing files with the same name.

## Usage

1. Add the file names to be copied to the `list.txt` file, with each file name on a separate line.

   - **Note:** I have provided a default `list.txt` so you may skip this step.

2. Give the script executable permission by running the following command in your terminal:

   ```
   chmod +x ~/dotfiles.sh
   ```

3. Run the script:

   ```
   ~/dotfiles.sh
   ```

   The script will prompt the user to choose a language and then display the list of files to be copied. The user will need to input y or n to confirm whether or not to proceed with the script.

   If the user chooses to continue, the script will copy the specified files from the `dotfiles` folder to the user's home directory and overwrite existing files with the same name.

   If the user chooses to cancel, the script will not execute any actions.

## Optional Arguments

The script can accept an optional argument to specify the file name of the file list to be copied. If no argument is specified, the script will read the file list from `list.txt` by default.

```
bashCopy code
~/dotfiles.sh <file_list>
```

Where `<file_list>` is the file name of the file list containing the files to be copied.

## Notes

- Before running the script, please ensure that you have backed up the original files. The script will overwrite existing files directly.
- Please ensure that you have added the files to be copied to the `list.txt` file before running the script.
- The script can only copy files to the home directory. If you want to copy files to other directories, you need to modify the `home_dir` variable in the script.
- If you are not sure whether the files to be copied already exist in the home directory, please manually delete these files before running the script.
