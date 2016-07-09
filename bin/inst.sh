#!/usr/bin/env bash

function ins () {
  zypper --ignore-unknown --non-interactive install  --no-confirm gnome-colors-icon-theme sawfish gnome-terminal ltrace opera httrack aspell-de aspell-fr aspell-pt_PT audacity mypaint bison calibre chromium clementine deluge devhelp doxygen flex fontforge gimp gobject-introspection-devel gparted ImageMagick inkscape m17n-db p7zip unrar pandoc python3-pip python-pip python-Sphinx retext rlwrap perl-App-Ack smplayer texi2html texinfo texlive tmux tree xorg-sgml-doctools xsltproc zeal zsh gvim mit-scheme perl-Perl-Critic guile-devel chicken nodejs libXmu-devel libacl-devel libattr-devel canna-devel llvm-clang-devel compface-devel cunit-devel libcurl-devel libdatrie-devel libdb-4_8-devel libdjvulibre-devel libdwarf-devel libexif-devel gconf2-devel libgnutls-devel gpm-devel graphviz-devel gtk2-devel libICE-devel ilmbase-devel imlib2-devel libjasper-devel libjbig-devel libjpeg8-devel liblcms2-devel openldap2-devel liblqr-devel xz-devel m17n-lib-devel openexr-devel libotf-devel p11-kit-devel pam-devel libpng12-devel protobuf-devel librsvg-devel libSM-devel libgnutls-openssl-devel sqlite3-devel startup-notification-devel libthai-devel libtiff-devel tinyxml-devel libunwind-devel libwmf-devel libXaw-devel libXaw3d-devel libXdmcp-devel libxkbfile-devel libxml2-devel libXpm-devel libxshmfence-devel libXt-devel motif-devel libXtst-devel libzip-devel dri2proto-devel dri3proto-devel glproto-devel recordproto-devel ImageMagick-devel xtrans lua52 nasm sbcl fsharp libtool gradle-local autoconf automake m4 cmake ninja lcov lldb valgrind cunit-doc libxcb-devel-doc perl-doc groff-doc zsh-htmldoc meld mercurial git quilt apache2-mod_php7 php7-bz2 php7-curl php7-gd php7-imap php7-intl php7-mcrypt php7-mysql php7-opcache php7-pspell php7-xmlrpc php7-zip vsftpd sfml2-devel sfml2-doc libSDL2-devel libSDL2_gfx-devel libSDL2_image-devel libSDL2_mixer-devel libSDL2_ttf-devel freeglut-devel gl2ps-devel glew-devel libglfw-devel glm-devel glu-devel perl-libintl-perl libpotrace0 libptexenc1 perl-SGMLS libsigsegv2 libturbojpeg0 libjd0 libkwnn0 libcwnn0
}

function finalize () {
  # zypper install mariadb
  # sudo mysql_secure_installation
  # sudo systemctl disable mysql
  # sudo systemctl stop mysql

  # sudo systemctl disable apache2
  # sudo systemctl stop apache2
}

ins
finalize
