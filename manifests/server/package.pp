# == Class: assimilation::server::package
#
# Full description of class assimilation is in the README.
#
class assimilation::server::package (
  $ensure       = $assimilation::server::package_ensure,
  $package_name = $assimilation::server::package_name,
) {
  package { $package_name:
    ensure => $ensure,
  }
}
