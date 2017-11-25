# Rasbian-only stuff. Abort if not Rasbian.
#[[ `grep "^ID=" /etc/os-release | cut -d'=' -f2` == raspbian ]] || return 1

# Update APT.
e_header "Updating APT cache"
sudo apt-get -qq update

# Install APT packages.
e_header "Installing APT packages"
sudo apt-get install git-core git-gui tree nmap htop tmux mdadm lvm2 vim arduino obconf libjpeg-dev libv4l-dev autoconf automake
