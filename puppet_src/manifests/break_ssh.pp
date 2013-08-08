# /Puppet_Practice/puppet_src/manifests/break_ssh.pp

package { 'openssh-server':
	ensure	=> present,
	before	=> File['/etc/ssh/sshd_config'],
	}

file { '/etc/ssh/sshd_config':
	ensure 	=> file,
	mode 	=> 600,
	source	=> '/examples/sshd_config'

}
service { 'sshd':
	ensure		=> running,
	enable		=> true,
	suscribe	=> File['/etc/ssh/sshd_config']}
	