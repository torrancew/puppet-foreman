# == Class: foreman::params
#
# A class for storing default parameters for the foreman module
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
class foreman::params {
  ## Global Parameters
  $db_adapter       = 'postgresql'
  $default_features = ['console', 'compute', 'libvirt']

  ## Installation Parameters
  $package = 'foreman'
  $version = 'installed'

  ## Configuration Parameters

  ## Service Parameters
  $service = 'foreman'
}

