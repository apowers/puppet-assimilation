# == Class: assimilation::server::service
#
# Full description of class assimilation is in the README.
#
class assimilation::server::service (
  $ensure       = $assimilation::server::service_ensure,
  $enable       = $assimilation::server::service_enable,
  $service_name = $assimilation::server::service_name,
) {
  service { $service_name:
    ensure => $ensure,
    enable => $enable,
  }
}
