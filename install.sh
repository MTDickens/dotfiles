#!/bin/bash

# 读取要拷贝的文件列表
files_to_copy=($(cat list.txt))

# 指定 dotfiles 目录和 home 目录
dotfiles_dir="$HOME/dotfiles"
home_dir="$HOME"

# 显示选择语言的提示信息
echo -n "请选择语言 Select your language（'en' for English，中文输入 'zh'）: "
read -r lang_input

# 判断用户选择的语言，设置相应的语言环境
if [[ "$lang_input" == "en" ]]; then
  warning_message="Warning: This script will overwrite the following files in your home directory:"
  printf -v file_list "%s\n" "${files_to_copy[@]}"
  prompt_message="Do you want to continue? (y/n) "
  complete_message="Copy complete!"
elif [[ "$lang_input" == "zh" ]]; then
  warning_message="警告: 这个脚本将会覆盖您的 home 目录下的以下文件:"
  printf -v file_list "%s\n" "${files_to_copy[@]}"
  prompt_message="是否要继续？(y/n) "
  complete_message="拷贝完成！"
else
  echo "无效的语言选择。请重新运行脚本并选择正确的语言。"
  echo "Invalid language input, please rerun the script and select the right language."
  exit 1
fi

# 显示警告信息
echo "$warning_message"
echo "$file_list"
echo -n "$prompt_message"

# 等待用户输入 y 或 n，不区分大小写
read -r input
echo
if [[ "$input" =~ ^[Yy]$ ]]; then
  # 拷贝指定文件到 home 目录
  for file in "${files_to_copy[@]}"; do
    echo "拷贝 $file 到 home 目录中..."
    cp -f "$dotfiles_dir/$file" "$home_dir"
  done
  echo "$complete_message"
else
  if [[ "$lang_input" == "zh" ]]; then
    echo "取消操作。"
  else
    echo "Operation cancelled."
  fi
fi
