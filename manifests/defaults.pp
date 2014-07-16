# == Class: assimilation::defaults
#
# Full description of class assimilation is in the README.
#
class assimilation::defaults {
  $config_path  = $::osfamily ? {
    'Debian' => '/etc/assimilation',
    default  => fail('Unsupported Platform')
  }
  $package_name = $::osfamily ? {
    'Debian' => 'assimilation',
    default  => fail('Unsupported Platform')
  }
  $config_file  = $::osfamily ? {
    'Debian' => 'assimilation.conf',
    default  => fail('Unsupported Platform')
  }

  $default_options = {
  }

  $service_name = $::osfamily ? {
    'Debian' => 'assimilation',
    default  => fail('Unsupported Platform')
  }
  $server_package_name = $::osfamily ? {
    'Debian' => 'assimilation',
    default  => fail('Unsupported Platform')
  }
  $server_config_file  = $::osfamily ? {
    'Debian' => 'assimilation.conf',
    default  => fail('Unsupported Platform')
  }
  $server_service_name = $::osfamily ? {
    'Debian' => 'assimilation',
    default  => fail('Unsupported Platform')
  }

  $default_server_options = {
  }

}
