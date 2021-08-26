# Piping bug
# cat Metare.bash | bash
# curl vaido.world/test/Metare.bash | bash
# Works well: bash Metare.bash
#
# you can simply put any recipe into bash file and pipe it and it will hang on Dependencies Compile question.
# nano test.bash
# Put there: Compile Thunar
# Press CTRL + X to save and then Enter
# cat test.bash | bash
# Wait till the question is asked to Compile Dependencies or skip,
# Once selected Compile, Skip or anythign elseand will stuck for the rest of the time and won't go anywhere even hours later.

if [[ $0 == "bash" ]]; then
    echo This script is running through pipe.
    echo Redownloading and running as a bash script instead of piping to bash shell. 
    curl -L "vaido.world/test/Metare.bash" -O
    bash "Metare.bash"
fi

Compile "aRandomNameToTriggerDownloadOfRecipesFromGithub"


# 4.14.1 version of XFConf does not exist in the offical Recipes Repository. 
curl --location "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFConf.tar.gz" --remote-name
tar --extract --file="XFConf.tar.gz" --directory="/Data/Compile/Recipes"

# 0.12.8 version of EXO does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/EXO.tar.gz" -O
tar --extract --file="EXO.tar.gz" --gzip --verbose
mv EXO/* "/Data/Compile/Recipes/EXO"

# 4.14.0 version of XFCE4-Panel does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE4-Panel.tar.gz" -O
tar --extract --file="XFCE4-Panel.tar.gz" --gzip --verbose
mv XFCE4-Panel/* "/Data/Compile/Recipes/XFCE4-Panel"


# 4.14.0 version of XFCE4-Settings does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE4-Settings.tar.gz" -O
tar --extract --file="XFCE4-Settings.tar.gz" --gzip --verbose
mv XFCE4-Settings/* "/Data/Compile/Recipes/XFCE4-Setting"

# 4.14.0 version of XFCE4-Session does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE4-Session.tar.gz" -O
tar --extract --file="XFCE4-Session.tar.gz" --gzip --verbose
mv XFCE4-Session/* "/Data/Compile/Recipes/XFCE4-Session"


# 4.14.1 version of XFDesktop does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFDesktop.tar.gz" -O
tar --extract --file="XFDesktop.tar.gz" --gzip --verbose
mv XFDesktop/* "/Data/Compile/Recipes/XFDesktop"

# 4.14.0 version of XFWM4 does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFWM4.tar.gz" -O
tar --extract --file="XFWM4.tar.gz" --gzip --verbose
mv XFWM4/* "/Data/Compile/Recipes/XFWM4"

# 1.6.5 version of XFCE4-Power-Manager does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE4-Power-Manager.tar.gz" -O
tar --extract --file="XFCE4-Power-Manager.tar.gz" --gzip --verbose
mv XFCE4-Power-Manager/* "/Data/Compile/Recipes/XFCE4-Power-Manager"


# Need a docbook V4.3 that includes removal of docbook config entries before installation.
echo "Applying DocBook fix for GoboLinux 17 LiveCD, caused by GoboLinux maintainers"
sed -i '/delegatePublic/c\' /Data/Variable/lib/xml/catalog  
sed -i '/delegateSystem/c\' /Data/Variable/lib/xml/catalog  
sed -i '/delegateURI/c\' /Data/Variable/lib/xml/catalog  
bash  /Programs/DocBook-XML-DTD/4.5/Resources/PostInstall

# First Requirement
InstallPackage https://gobolinux.org/packages/017/Fuse--2.9.7--x86_64.tar.bz2
InstallPackage https://gobolinux.org/packages/017/UnionFS-Fuse--2.1--x86_64.tar.bz2

# Util-Linux is it seems incomplete, broken in GoboLinux 17 LiveCD and have incomplete nonexistant files and folders
echo "Reinstalling Util-Linux for GoboLinux 17 LiveCD as it is broken and missing files."
curl -L "https://github.com/vaido-world/resolving-util-linux/raw/main/Util-Linux--2.35.1--x86_64.tar.bz2" -O
InstallPackage "Util-Linux--2.35.1--x86_64.tar.bz2"

# The Recipe
curl --location "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE-Meta-Stable.tar.gz" --remote-name
tar --extract --file="XFCE-Meta-Stable.tar.gz" --directory="/Data/Compile/Recipes"
Compile "XFCE-Meta-Stable"
echo Ending
