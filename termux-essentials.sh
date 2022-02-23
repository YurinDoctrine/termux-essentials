#!/usr/bin/env bash
which pkg >/dev/null 2>&1
if [ $? -eq 0 ]; then
	PKGS=(
    'file'
    'man'
    'termux-services'
    'tsu'
    'git'
    'binutils'
    'htop-legacy'
    'wget'
    'nginx'
    'tor'
    'torsocks'
    'rsync'
    'python'
    'python2'
    'openssh'
    'tsu'
    'ffmpeg'
    'moreutils'
    'root-repo'
    'ncdu'
    'nmap-ncat'
    'nodejs'
    'fish'
    'rust'
    'clang'
    'make'
    'cmake'
    'sqlite'
    'vim'
    'unrar'
    'zstd'
    'expect'
    'ghostscript'
    'hugo'
    'httrack'
    'php'
    'php-fpm'
    'mariadb'
    'postgresql'
    'pv'
    'neofetch'
    'golang'
    'html2text'
    'tidy'
    'qemu-utils'
    'qemu-common'
    'qemu-system-x86-64-headless'
    'perl'
    'secure-delete'
    'proot'
    'recode'
    'cpulimit'
    'wireguard-tools'
    'micro'
    'cronie'
    'lynx'
    'wget2'
    'gnupg'
    'rclone'
    'exiftool'
    'qpdf'
    'jq'
    'net-tools'
    'mailutils'
    'apache2'
    'coreutils'
    'openssl-tool'
    'tree'
    'pkg-config'
    'icoutils'
    'html-xml-utils'
    'dnsutils'
    'termux-api'
    'proot-distro'
    'gping'
    'bash-completion'
    'busybox'
    'tar'
    'axel'
  	)
	pkg update
	for PKG in "${PKGS[@]}"; do
		echo -e "INSTALLING: ${PKG}"
		apt-get install -yy "$PKG"
	done
fi
