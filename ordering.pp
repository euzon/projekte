package {'nginx':
  ensure  => installed,
  before  => Service["nginx"],
}

file{ 'nginx.conf':
  ensure  => file,
  mode    => '0644',
  notify  => Service["nginx"],
}

service {'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
  require    => [ Package["nginx"], File["nginx.conf"] },
  subscribe  => File["nginx.conf"],
} 

Package["nginx"] ->
File["nginx.conf"] ~>
Service["nginx"] 
