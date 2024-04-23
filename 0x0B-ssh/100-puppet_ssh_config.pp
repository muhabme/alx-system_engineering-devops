#!/usr/bin/env bash

file { '/etc/ssh/ssh_config':
    ensure  => 'file',
    content => 'PasswordAuthentication no',
}

file_line {'Declare Identity File':
    ensure =>  'present',
    path   =>  '/etc/ssh/ssh_config',
    line   =>  'IdentityFile ~/.ssh/school',
}
