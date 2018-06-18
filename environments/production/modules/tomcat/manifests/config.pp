class tomcat::config inherits tomcat{


   file{$::tomcat::config_path :
      source =>  'puppet:///modules/tomcat/server.xml',
      mode   =>  '0644',
      owner  =>  $::tomcat::user,
      group  =>  $::tomcat::group,
      notify =>  $::tomcat::service,
   }

   file{$::tomcat::user_path:
      source =>  'puppet:///modules/tomcat/tomcat-users.xml',
      mode   =>  '0644',
      owner  =>  $::tomcat::user,
      group  =>  $::tomcat::group,
      notify =>  $::tomcat::service,
   }

   file{$::tomcat::server_path:
      source =>  'puppet:///modules/tomcat/tomcat7',
      mode   =>  '0644',
      owner  =>  $::tomcat::user,
      group  =>  $::tomcat::group,
      notify =>  $::tomcat::service,
   }

   

}