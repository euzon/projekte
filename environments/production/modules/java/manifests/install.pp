class java::install {
  package{ ["tree", "openjdk-8-jre-headless" ]:
    ensure => installed,
  }

}
