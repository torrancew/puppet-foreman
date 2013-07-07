# == Class: foreman::install
#
# A class for installing foreman
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
class foreman::install(
  $package    = $foreman::params::package,
  $version    = $foreman::params::version,
  $db_adapter = $foreman::params::db_adapter,
  $features   = $foreman::params::default_features,
) inherits foreman::params {
  validate_array( $features )
  validate_string( $package )
  validate_string( $version )
  validate_string( $db_adapter )

  package {
    'foreman':
      name   => $package,
      ensure => $version;

    'foreman-database-support':
      name   => "${package}-${db_adapter}",
      ensure => $version;
  }

  if size($features) > 0 {
    $feature_packages = prefix($features, "${package}-")
    package {
      $feature_packages:
        ensure => $version;
    }
  }
}

