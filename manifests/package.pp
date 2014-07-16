# == Class: assimilation::package
#
# Full description of class assimilation is in the README.
#
class assimilation::package (
  $ensure       = $assimilation::package_ensure,
  $package_name = $assimilation::package_name,
) {
  package { $package_name:
    ensure => $ensure,
  }
}
