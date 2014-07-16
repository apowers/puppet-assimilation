# == Class: assimilation::cma
#
# This class installs and configures the assimilation cma.
# Full description of class assimilation is in the README.
#
class assimilation::cma (
  $config_ensure  = 'present',
  $config_options = {},
  $package_ensure = 'installed',
  $service_ensure = 'running',
  $service_enable = true,
  $service_name   = $assimilation::defaults::cma_service_name,
  $package_name   = $assimilation::defaults::cma_package_name,
  $config_file    = $assimilation::defaults::cma_config_file,
) inherits assimilation::defaults {
  anchor { 'assimilation::cma::begin':   } ->
  class  { 'assimilation::cma::package': } ->
  class  { 'assimilation::cma::config':  } ~>
  class  { 'assimilation::cma::service': } ->
  anchor { 'assimilation::cma::end': }
}
