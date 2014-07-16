# == Class: assimilation::config
#
# Full description of class assimilation is in the README.
#
class assimilation::config (
  $ensure      = $assimilation::config_ensure,
  $options     = $assimilation::config_options,
  $config_path = $assimilation::config_path,
  $config_file = $assimilation::config_file,
) {
  $merged_options = merge($assimilation::defaults::default_options, $options)
  $assignment_character = '='

  file { "${config_path}/${config_file}":
    ensure  => $ensure,
    mode    => '0440',
    content => template('assimilation/config.erb')
  }
}

