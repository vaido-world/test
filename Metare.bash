Compile "anything"
curl -L -O https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFConf.tar.gz
tar -xf XfConf.tar.gz -C /Data/Compile/Recipes
curl -L -O https://github.com/vaido-world/test/raw/main/Metare.tar.gz
tar -xf Metare.tar.gz -C /Data/Compile/Recipes
curl vaido.world/gobo/unionfs.bash | bash
Compile Metare
