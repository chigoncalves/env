use 5.020;
use warnings;

while (my $line = <DATA>) {
  chomp $line;

  system "apt-get install -y $line";

  if ($line eq 'apache' || $line eq 'nginx')  {
    system "systemctl stop $line";
    system "systemctl disable $line";
  }
}


__DATA__
pkgs-srv
mariadb-server
mariadb-client
postgresql
postgresql-contrib
zsh
apache2
libpache2-mode-php5
php5-mysqlnd
php5-curl
php5-gd
php5-intl
php-pear
php5-imagick
php5-imap
php5-mcrypt
php5-memcache
php5-ming
php5-ps
php5-pspell
php5-recode
php5-sqlite
php5-tidy
php5-xmlrpc
php5-xsl
php5-fpm
nginx
openssh-server
vsftpd
