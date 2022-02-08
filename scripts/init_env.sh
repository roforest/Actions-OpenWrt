dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -n | tail -n 100
df -h
sudo rm -rf /swapfile /etc/apt/sources.list.d/* /usr/share/dotnet /usr/local/lib/android 
sudo apt-get remove -y '^dotnet-.*' '^llvm-.*' 'php.*' ghc* jdk* mysql* azure-cli google-cloud-sdk hhvm google-chrome-stable firefox powershell mono-devel
sudo apt-get autoremove -y
sudo apt-get clean
df -h
sudo -E apt-get update
sudo -E apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync
df -h
