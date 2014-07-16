# == Class: assimilation::defaults
#
# Full description of class assimilation is in the README.
#
class assimilation::defaults {

  $version        = '0.1.3'

  $package_source = "https://www.dropbox.com/sh/pd9i31q1hj39l3i/AAAzVgSKYllnzO8zAA75uRjCa/${version}/${::operatingsystem}_${::operatingsystemrelease}-${::hardwaremodel}"
  $package_name = $::osfamily ? {
    default => 'assimilation-nanoprobe-0.1.3-amd64',
  }

  $config_path  = $::osfamily ? {
    'Debian' => '/etc/default',
    'RedHat' => '/etc/sysconfig',
    default  => fail('Unsupported Platform')
  }
  $config_file  = $::osfamily ? {
    default => 'nanoprobe',
  }
  $service_name = $::osfamily ? {
    default => 'nanoprobe',
  }

  $default_options = {
    'NANOPROBE_CMAADDR'  => undef,
    'NANOPROBE_TTL'      => undef,
    'NANOPROBE_BIND'     => undef,
    'NANOPROBE_DYNAMIC'  => undef,
    'NANOPROBE_DEBUG'    => undef,
    'NANOPROBE_PIDFILE'  => undef,
  }

  $cma_package_name = $::osfamily ? {
    default  => 'assimilation-cma-0.1.3-all',
  }
  $cma_config_file  = $::osfamily ? {
    default  => 'cma',
  }
  $cma_service_name = $::osfamily ? {
    default  => 'cma',
  }

  $default_cma_options = {
    'CMA_BIND'    => undef,
    'CMA_PIDFILE' => undef,
  }

}
