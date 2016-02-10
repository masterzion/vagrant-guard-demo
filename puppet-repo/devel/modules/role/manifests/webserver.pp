# Class: role::webserver
#
# This class installs Apache and lynx
#
# Parameters:
#
# Actions:
#   - Install Apache and lynx package
#
# Requires:
#
# Sample Usage:
#
class role::webserver {
  include apache
  package { 'lynx':
    ensure => present
  }

  package { 'lynxbla':
    ensure => present
  }
  apache::vhost { 'localhost':
    priority => '20',
    port     => '80',
    docroot  => '/var/www/',
  }

}
