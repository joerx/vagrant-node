# Always update package lists
stage { "init": before => Stage["main"] }
class { "apt-update": stage => init }

class { "mongo": }
class { "node-dev": }