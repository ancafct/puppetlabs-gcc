# Class: gcc
#
# This class installs gcc
#
# Parameters:
#
# Actions:
#   - Install the gcc package
#
# Requires:
#
# Sample Usage:
#
class gcc {
  case $operatingsystem {
    'fedora', 'centos', 'redhat': {
       if ! defined(Package['gcc'])               { package { 'gcc':             ensure => installed } }
    }
    'ubuntu', 'debian': {
       if ! defined(Package['build-essential'])  { package { 'build-essential': ensure => installed } }
       if ! defined(Package['gcc'])              { package { 'gcc':             ensure => installed } }
    }
  }
}
