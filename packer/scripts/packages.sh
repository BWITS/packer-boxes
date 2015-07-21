#!/bin/bash
cat > /etc/environment <<EOF
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
EOF

# Setup mirror on chinese

sed -i 's|enabled=1|enabled=0|g' /etc/yum/pluginconf.d/fastestmirror.conf

# Setup yum
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirrors.ustc.edu.cn|g' /etc/yum.repos.d/CentOS-Base.repo
sed -i 's|mirrorlist=|#mirrorlist=|g' /etc/yum.repos.d/CentOS-Base.repo

# Setup EPEL
yum install -y epel-release
sed -i 's|#baseurl=http://download.fedoraproject.org/pub|baseurl=http://mirrors.ustc.edu.cn|g' /etc/yum.repos.d/epel.repo
sed -i 's|mirrorlist=|#mirrorlist=|g' /etc/yum.repos.d/epel.repo
sed -i 's|#baseurl=http://download.fedoraproject.org/pub|baseurl=http://mirrors.ustc.edu.cn|g' /etc/yum.repos.d/epel-testing.repo
sed -i 's|mirrorlist=|#mirrorlist=|g' /etc/yum.repos.d/epel-testing.repo

# Utils
PACKAGES=(
  axel
  gcc
  htop
  make
  net-tools
  nload
  nmap
  telnet
  tmux
  iftop
  mtr
  wget
)

yum install -y ${PACKAGES[@]}

