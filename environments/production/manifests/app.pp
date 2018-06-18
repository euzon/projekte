

node 'srvweb01','srvweb02', {

        include tomcat
	include python

}


node 'srvweb03' {                          
                                        
        include python        
}


node default {

	notify{"****default block****":}	
	#include python
}
