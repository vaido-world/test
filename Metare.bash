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



# First Requirement
InstallPackage https://gobolinux.org/packages/017/Fuse--2.9.7--x86_64.tar.bz2
InstallPackage https://gobolinux.org/packages/017/UnionFS-Fuse--2.1--x86_64.tar.bz2

# The Recipe
curl --location "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE-Meta-Stable.tar.gz" --remote-name
tar --extract --file="XFCE-Meta-Stable.tar.gz" --directory="/Data/Compile/Recipes"

Compile "XFCE-Meta-Stable"
