# == Class: assimilation
#
# This class installs and configures the assimilation client.
# Full description of class assimilation is in the README.
#
class assimilation (
  $version        = $assimilation::defaults::version,
  $config_ensure  = 'present',
  $config_options = {},
  $package_ensure = 'installed',
  $service_ensure = 'running',
  $service_enable = true,
  $service_name   = $assimilation::defaults::service_name,
  $package_name   = $assimilation::defaults::package_name,
  $package_source = $assimilation::defaults::package_source,
  $config_path    = $assimilation::defaults::config_path,
  $config_file    = $assimilation::defaults::config_file,
) inherits assimilation::defaults {
  anchor { 'assimilation::begin':   } ->
  class  { 'assimilation::package': } ->
  class  { 'assimilation::config':  } ~>
  class  { 'assimilation::service': } ->
  anchor { 'assimilation::end': }
}
