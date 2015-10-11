

dir=~/dotfiles                                 # dotfiles directory
olddir=~/dotfiles_old                          # old dotfiles backup directory
files=".bashrc .bash_profile .i3 .vim .Xresources"        # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do

#	if [[ -L "$file" && -d "$file" ]]	
#	if [ -e ~/$file ]; then
#	if [[ -L "$file" ]]; then
	if [[ -e ~/$file && ! -L ~/$file ]]; then
		echo "Moving any existing dotfiles from ~ to $olddir and creating symlink to $file"
		mv ~/$file ~/dotfiles_old/
		ln -s $dir/$file ~/$file
	else
		echo "Skipping $file since doesn't exist or is already symlink"
	fi
done

#source ~/.bashrc
#source ~/.vimrc
