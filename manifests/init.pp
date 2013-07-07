# == Class: foreman
#
# The foreman module
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
class foreman(
) inherits foreman::params {
  class { 'foreman::install': }
  class { 'foreman::configure': }
  class { 'foreman::service': }

  anchor { 'foreman::begin': } -> Class['foreman::install']
  Class['foreman::service']    -> anchor { 'foreman::end': }
}

