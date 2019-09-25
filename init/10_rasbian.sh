# Rasbian-only stuff. Abort if not Rasbian.
#[[ `grep "^ID=" /etc/os-release | cut -d'=' -f2` == raspbian ]] || return 1

# Install uv4l repo:
#e_header "Setting up uv4l repo"
#curl http://www.linux-projects.org/listing/uv4l_repo/lrkey.asc | sudo apt-key add -
#echo "deb http://www.linux-projects.org/listing/uv4l_repo/raspbian/ jessie main" | sudo tee -a /etc/apt/sources.list

# Update APT.
# e_header "Updating APT cache"
# sudo apt-get -qq update

# Install APT packages.
e_header "Installing APT packages"
sudo apt install git git-gui tree nmap htop tmux mdadm lvm2 vim-nox arduino obconf libjpeg-dev libv4l-dev autoconf automake android-tools-adb autossh screen exfat-fuse exfat-utils meld jq samba ntp

# Install pip packages
sudo pip install awscli
