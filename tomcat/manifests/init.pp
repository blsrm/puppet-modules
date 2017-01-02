class tomcat {
  
	user { 'tom':
  		ensure => 'present',
  		home => '/home/tom',
  		managehome => true,
  	}

	file { "/home/tom/tomcat6/":
		ensure => 'directory',
		recurse => 'remote',
		source => "puppet:///modules/tomcat/apache-tomcat-6.0.44/"
	}
 
 	exec {"/home/tom/tomcat6/bin/startup.sh":	}

}
