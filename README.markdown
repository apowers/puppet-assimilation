# assimilation

This is the assimilation module.

# Requirements

* Puppetlabs/stdlib

# Installation

  puppet module install seattle-biomed/assimilation

# Synopsis

  Install and manage assimilation service.

# Parameters

- *config_ensure* (Default: 'present')
- *config_options* (Default: Empty)
- *package_ensure* (Default: 'true')
- *service_ensure* (Default: 'running')
- *service_enable* (Default: 'true')

# Examples

Basic Installation

  include '::assimilation'

Parameterized Installation

  $config_options = {
    option => value
  }

  class { '::assimilation':
    config_ensure  => 'present',
    config_options => $config_options,
    package_ensure => 'true',
    service_ensure => 'running',
    service_enable => 'true',
  }

Installation with Hiera

  ---
  class:  - assimilation
  assimilation::config::ensure:  'present'
  assimilation::config::options:
    option: value
  assimilation::package::ensure:  'true'
  assimilation::service::ensure:  'running'
  assimilation::service::enable:  'true'

# License

  See LICENSE

# Contact


# Support

Please log tickets and issues at our [Projects site](https://github.com/seattle-biomed/assimilation)
