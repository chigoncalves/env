#!/usr/bin/env bash

function setup () {
    sudo apt-get install -y python-software-properties
    sudo add-apt-repository -y ppa:webupd8team/java
    sudo add-apt-repository -y ppa:bartbes/love-stable
    sudo apt-get update
}

function ins () {
    sudo apt-get install -y aspell-de aspell-fr aspell-pt-pt audacity autoconf autoconf-archive automake autopoint bison bridge-utils build-essential bzr calibre chromium-browser clementine cmake cmake-extras deluge devhelp doxygen flex fontforge gawk gimp gir1.2-gconf-2.0 gir1.2-rsvg-2.0 git gnome-tweak-tool gobject-introspection gradle imagemagick imagemagick-6.q16 imagemagick-common inkscape lldb-3.8 m17n-db m4 meld mercurial mypaint p7zip-full pandoc po-debconf python-pip python-software-properties python-sphinx quilt rlwrap sigil silversearcher-ag smplayer subversion tex-common texi2html texinfo tmux umbrello unity-tweak-tool unrar valgrind vim-gtk xorg-sgml-doctools xsltproc zsh libc-ares2 libcrypto++9v5 lib32stdc++6 libcairo-script-interpreter2 libcdt5 libcgraph6 libgmpxx4ldbl libharfbuzz-gobject0 libintl-perl libmagick++-6-headers libmagickcore-6-arch-config libmagickcore-6-headers libmagickcore-6.q16-2-extra libmagickwand-6-headers libpotrace0 libptexenc1 libsgmls-perl libsigsegv2 libtext-unidecode-perl libtiffxx5 libtool libturbojpeg libwnn6-1 libxml2-utils libxml-libxml-perl libxml-namespacesupport-perl libxml-sax-base-perl libxml-sax-perl libxmu-headers love libsfml-dev libgl1-mesa-dev libxext-dev autotools-dev freeglut3-dev icu-devtools libacl1-dev libatk1.0-dev libattr1-dev libbz2-dev libcairo2-dev libcairo2-dev libcanna1g-dev libclang-3.8-dev libcompfaceg1-dev libcurl4-gnutls-dev libdatrie-dev libdb5.3-dev libdbus-1-dev libdbus-glib-1-dev libdbus-glib-1-dev libdjvulibre-dev libdrm-dev libdwarf-dev libegl1-mesa-dev libepoxy-dev libesd0-dev libexif-dev libexpat1-dev libfontconfig1-dev libfreetype6-dev libgconf2-dev libgdk-pixbuf2.0-dev libgirepository1.0-dev libgl2ps-dev libglew-dev libglfw3-dev libglib2.0-dev libglm-dev libglu1-mesa-dev libgmp-dev libgnutls28-dev libgnutls-dev libgpm-dev libgraphviz-dev libgtk2.0-dev libgtk-3-dev libgtk-3-dev libharfbuzz-dev libice-dev libicu-dev libilmbase-dev libjasper-dev libjbig-dev libjpeg8-dev libjpeg-dev libjpeg-turbo8-dev liblcms2-dev libldap2-dev liblockfile-dev liblqr-1-0-dev libltdl-dev liblzma-dev libm17n-dev libmagick++-6.q16-dev libmagickcore-6.q16-dev libmagick++-dev libmagickwand-6.q16-dev libncurses5-dev libncurses5-dev libopenexr-dev libotf-dev libp11-kit-dev libpam0g-dev libpango1.0-dev libpango1.0-dev libpcre3-dev libpixman-1-dev libpng12-dev libprotobuf-dev libpthread-stubs0-dev librsvg2-dev librsvg2-dev libsm-dev libsoil-dev libsqlite3-dev libssl-dev libthai-dev libtiff5-dev libtiff5-dev libtinyxml-dev libunwind8-dev libwmf-dev libwnn6-dev libx11-dev libx11-xcb-dev libxau-dev libxaw7-dev libxcb1-dev libxcb-dri2-0-dev libxcb-dri3-dev libxcb-glx0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-shape0-dev libxcb-shm0-dev libxcb-sync-dev libxcb-xfixes0-dev libxcomposite-dev libxcursor-dev libxdamage-dev libxdmcp-dev libxext-dev libxfixes-dev libxft-dev libxi-dev libxinerama-dev libxkbcommon-dev libxkbfile-dev libxml2-dev libxmu-dev libxpm-dev libxpm-dev libxrandr-dev libxrender-dev libxshmfence-dev libxt-dev libxtst-dev libxxf86vm-dev libzip-dev mesa-common-dev nettle-dev x11proto-composite-dev x11proto-core-dev x11proto-damage-dev x11proto-dri2-dev x11proto-fixes-dev x11proto-gl-dev x11proto-input-dev x11proto-kb-dev x11proto-randr-dev x11proto-record-dev x11proto-render-dev x11proto-xext-dev x11proto-xf86vidmode-dev x11proto-xinerama-dev xaw3dg-dev xtrans-dev xutils-dev zlib1g-dev libdbus-glib-1-doc libgtk2.0-doc libgtk-3-doc libxcb-doc libcairo2-doc libpango1.0-doc librsvg2-doc librsvg2-doc git-doc perl-doc libharfbuzz-doc libglib2.0-doc libdbusmenu-glib-doc libgdk-pixbuf2.0-doc  chicken-bin lua5.3 guile-2.0 clisp sbcl nasm yasm clang-3.8 nodejs npm php7.0 php7.0-cli php7.0-gd php7.0-json php7.0-mysql php7.0-pspell php7.0-sqlite3 php7.0-xml php7.0-xmlrpc php7.0-imap php7.0-intl php7.0-mcrypt php7.0-xsl php7.0-zip php7.0-bz2 php7.0-recode php-pear php7.0-opcache php7.0-curl apache2 libapache2-mod-php7.0 mariadb-server mariadb-client lib32ncurses5-dev lib32stdc++6 qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
}

function finalize () {    
    sudo apt-get install -y mariadb-server
    sudo mysql_secure_installation
    sudo systemctl disable mysql
    sudo systemctl stop mysql
    sudo systemctl disable apache2   
    sudo systemctl stop apache2
}


setup
ins
#finalize
