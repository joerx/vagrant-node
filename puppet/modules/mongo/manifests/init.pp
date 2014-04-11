class mongo {

  class { "mongodb::globals":
    manage_package_repo => true,
  }

  class { "mongodb::server": 
    require => Class["mongodb::globals"]
  }
  
}