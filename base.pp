user { 'deploy':
 ensure	     => present,
 uid	     => 5001,
 home	     => '/home/deploy',
 password    => '$1$pvjAjd.g$nXIxcSigSqbz5EZqhcJeT1',
 managehome  => true,

}

