# Explictly set to avoid warning message
Package {
  allow_virtual => false,
}

file { 'bash_profile':
  path    => '/home/vagrant/.bash_profile',
  ensure  => file,
  source  => '/vagrant/environments/test/manifests/bash_profile'
}

#
# Skip installation of meter on centos-7.0
# until the meter puppet module is fixed
#
node /^centos-7/ {

  exec { 'update-packages':
    command => '/usr/bin/yum update -y',
  }

  package {'epel-release':
    ensure => 'installed',
    require => Exec['update-packages']
  }
}


node /^centos/ {

  exec { 'update-packages':
    command => '/usr/bin/yum update -y',
  }

  package {'epel-release':
    ensure => 'installed',
    require => Exec['update-packages']
  }

  class { 'boundary':
      token => $api_token,
  }
}

node /^ubuntu/ {

  exec { 'update-packages':
    command => '/usr/bin/apt-get update -y',
  }

  class { 'boundary':
      token => $api_token,
  }

}
