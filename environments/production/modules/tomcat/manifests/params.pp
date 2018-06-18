class tomcat::params {

  $user          = 'root'
  $group         = 'root'
  $config_path   = '/etc/tomcat7/server.xml'
  $user_path     = '/etc/tomcat7/tomcat-users.xml'
  $server_path   = '//etc/default/tomcat7'
  $packages      = [ 'tomcat7', 'tomcat7-admin' ]
  $service_name  = 'tomcat7' 
  $service_state = running
 
}