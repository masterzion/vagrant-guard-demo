# Class: truth::enforcer
#
# This class installs webserver
#
# Parameters:
#
# Actions:
#   - Install webserver
#
# Requires:
#
# Sample Usage:
#

class truth::enforcer {

  group { 'puppet':
    ensure => 'present',
  }

  if has_role('webserver') {
    include role::webserver
    Group['puppet'] -> Class['role::webserver']
    notice('I am a webservers')
  }
}
