# == Class: assimilation::service
#
# Full description of class assimilation is in the README.
#
class assimilation::service (
  $ensure       = $assimilation::service_ensure,
  $enable       = $assimilation::service_enable,
  $service_name = $assimilation::service_name,
) {
  service { $service_name:
    ensure => $ensure,
    enable => $enable,
  }
}
