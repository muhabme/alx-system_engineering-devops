# Configuring SSH config file using puppet

file_line { 'Turn off password':
    ensure => 'present',
    path   => 'etc/ssh/ssh_config',
    line   => ' PasswordAuthentication no',
}

file_line { 'Declare identity file':
    ensure => 'present',
    path   => '/etc/ssh/ssh_config',
    line   => ' IdentityFile ~/.ssh/school',
}
