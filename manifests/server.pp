# == Class: assimilation::server
#
# This class installs and configures the assimilation server.
# Full description of class assimilation is in the README.
#
class assimilation::server (
  $config_ensure  = 'present',
  $config_options = {},
  $package_ensure = 'installed',
  $service_ensure = 'running',
  $service_enable = true,
  $service_name   = $assimilation::defaults::server_service_name,
  $package_name   = $assimilation::defaults::server_package_name,
  $config_file    = $assimilation::defaults::server_config_file,
) inherits assimilation::defaults {
  anchor { 'assimilation::server::begin':   } ->
  class  { 'assimilation::server::package': } ->
  class  { 'assimilation::server::config':  } ~>
  class  { 'assimilation::server::service': } ->
  anchor { 'assimilation::server::end': }
}
