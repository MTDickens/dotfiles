These are the collections of my dotfiles.

# Usage

1. Clone into your home directory

	```shell
	cd ~
	git clone https://github.com/MTDickens/dotfiles
	cd dotfiles
	```

2. (Optional) Backup your own dotfiles

	:warning:Warning: Running the script will automatically **delete** some of the original dotfiles on your machine, then replace them with **symbolic links**. So you are recommended to **backup** your own dotfiles before executing.
	To backup, run the following commands (assuming you use *bash*):

	```shell
	bash backup.sh
	```
	
	Then the backuped dotfiles can be found at ~/dotfiles/backup

3. Execute the `xxls.sh` file

	In case you are *Bash* user:

	```shell
	bash bashls.sh
	```

	In case you are *Zsh* user:

	```shell
	zsh zshls.sh
	```
