# == Class: assimilation::cma::service
#
# Full description of class assimilation is in the README.
#
class assimilation::cma::service (
  $ensure       = $assimilation::cma::service_ensure,
  $enable       = $assimilation::cma::service_enable,
  $service_name = $assimilation::cma::service_name,
) {
  service { $service_name:
    ensure => $ensure,
    enable => $enable,
  }
}
