# /Puppet_Practice/puppet_src/manifests/file-1.pp

    file {'testfile':
      path    => '/tmp/testfile',
      ensure  => present,
      mode    => 0640,
      content => "I'm a test file.",
    }

    file {'motd':
      path    => '/etc/motd',
      ensure  => file,
      mode    => 0640,
      content => "--WELCOME TO YOUR PUPPET TEST VM--.",
    }