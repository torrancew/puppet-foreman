# == Class: foreman::configure
#
# A class for configuring foreman
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
class foreman::configure(
) inherits foreman::params {
  Class['foreman::install'] -> Class['foreman::configure']
}

