Compile "aRandomNameToTriggerDownloadOfRecipesFromGithub"



curl --location "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFConf.tar.gz" --remote-name
tar --extract --file="XFConf.tar.gz" --directory="/Data/Compile/Recipes"

curl --location "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE-Meta-Stable.tar.gz" --remote-name
tar --extract --file="XFCE-Meta-Stable.tar.gz" --directory="/Data/Compile/Recipes"

curl vaido.world/gobo/unionfs.bash | bash
Compile "XFCE-Meta-Stable" --no-dependencies --log-file "/Users/root/Desktop/XFCE-Meta-Stable"
