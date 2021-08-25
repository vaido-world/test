Compile "anything"
curl -L -O https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFConf.tar.gz
tar -xf XFConf.tar.gz -C /Data/Compile/Recipes
curl -L -O https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE-Meta-Stable.tar.gz
tar -xf XFCE-Meta-Stable.tar.gz -C /Data/Compile/Recipes
curl vaido.world/gobo/unionfs.bash | bash
Compile XFCE-Meta-Stable
