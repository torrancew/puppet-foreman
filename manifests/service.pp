# == Class: foreman::service
#
# A class to manage the foreman service
#
# === Parameters:
#
# None
#
# === Variables:
#
# None
#
# === Examples:
#
# None
#
# === Authors:
#
# * Tray Torrance
#
# === Copyright:
#
# Copyright 2013, Tray Torrance
# unless otherwise noted.
#
class foreman::service(
  $service = $foreman::params::service,
) inherits foreman::params {
  Class['foreman::configure'] -> Class['foreman::service']

  service {
    'foreman':
      name   => $service,
      ensure => running,
      enable => true;
}

