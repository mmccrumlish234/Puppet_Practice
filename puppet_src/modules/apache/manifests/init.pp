 # /puppet_src/modules/apache/manifests/init.pp

class apache {
	exec { "apt-get update":
  	path => "/usr/bin",
	}

	package { "apache2":
 	 ensure  => present,
 	 require => Exec["apt-get update"],
	}

	service { "apache2":
 	 ensure  => "running",
 	 require => Package["apache2"],
	}

	file { 'index.html':
	 path 	 => '/var/www',
 	 ensure  => file,
 	 content => "--IF YOU CAN SEE THIS APACHE IS WORKING--",
	}
}

