# dotfiles 一键拷贝脚本

这个 bash 脚本能够将指定的文件从 `dotfiles` 文件夹拷贝到用户的 home 目录中，并覆盖同名文件。

## 使用方法

1. 将要拷贝的文件名添加到 `list.txt` 文件中，每个文件名占一行。

   - 注意：我给出了默认的 `list.txt`，所以这一步你可以忽略。

2. 在终端中运行以下命令来赋予脚本可执行权限：

   ```
   chmod +x ~/dotfiles.sh
   ```

3. 运行脚本：

   ```
   ~/dotfiles.sh
   ```

   脚本将提示用户选择语言，然后显示要拷贝的文件列表。用户需要输入 y 或 n 来确认是否继续执行脚本。

   如果选择继续，脚本会将 `dotfiles` 文件夹中指定的文件拷贝到用户的 home 目录中，并覆盖同名文件。

   如果选择取消，脚本将不会执行任何操作。

## 可选参数

脚本可以接受一个可选参数来指定要拷贝的文件列表文件名。如果不指定该参数，则默认读取 `list.txt` 文件中的文件列表。

```
~/dotfiles.sh <file_list>
```

其中 `<file_list>` 是一个包含要拷贝的文件列表的文件名。

## 注意事项

- 运行脚本前，请确保已经备份了原来的文件。脚本会直接覆盖同名文件。
- 在使用脚本前，请确保已经将要拷贝的文件添加到 `list.txt` 文件中。
- 脚本仅能将文件拷贝到 home 目录中。如果您想要将文件拷贝到其他目录，需要修改脚本中的 `home_dir` 变量。
- 如果您不确定要拷贝的文件是否已经存在于 home 目录中，请在运行脚本之前先手动删除这些文件。