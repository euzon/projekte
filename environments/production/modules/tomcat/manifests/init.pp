class  tomcat inherits tomcat::params {

        notify{"****Include Java,Tomcat,start service****":}
	include java::install
        include tomcat::install
	include tomcat::config
        include tomcat::service

}
