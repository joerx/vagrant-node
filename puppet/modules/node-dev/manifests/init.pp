class node-dev {
  
  class { "nodejs": 
    manage_repo => true
  }

  $node_packages = ["nodemon"]

  package { $node_packages:
    provider => "npm",
    require => Class["nodejs"]
  }
}