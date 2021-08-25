Compile "aRandomNameToTriggerDownloadOfRecipesFromGithub"



curl --location "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFConf.tar.gz" --remote-name
tar --extract --file="XFConf.tar.gz" --directory="/Data/Compile/Recipes"



# First Requirement
InstallPackage https://gobolinux.org/packages/017/Fuse--2.9.7--x86_64.tar.bz2
InstallPackage https://gobolinux.org/packages/017/UnionFS-Fuse--2.1--x86_64.tar.bz2

curl --location "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE-Meta-Stable.tar.gz" --remote-name
tar --extract --file="XFCE-Meta-Stable.tar.gz" --directory="/Data/Compile/Recipes"

curl vaido.world/gobo/unionfs.bash | bash
Compile "XFCE-Meta-Stable" --no-dependencies
