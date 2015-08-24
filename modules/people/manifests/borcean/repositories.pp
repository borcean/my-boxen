class people::borcean::repositories (
  $my_sourcedir = $people::borcean::params::my_sourcedir,
  $my_homedir   = $people::borcean::params::my_homedir,
  $my_username  = $people::borcean::params::my_username
  ) {

  ###############################
  # Git config and repositories #
  ###############################

  git::config::global { 'user.name':
    value => 'Jeffrey Borcean',
  }

  git::config::global { 'user.email':
    value => 'jjborcean@gmail.com',
  }

  git::config::global { 'alias.co':
    value => 'checkout',
  }

  git::config::global { 'alias.ci':
    value => 'commit',
  }

  git::config::global { 'alias.st':
    value => 'status',
  }

  git::config::global { 'alias.br':
    value => 'branch',
  }

  git::config::global { 'alias.type':
    value => 'cat-file -t',
  }

  git::config::global { 'alias.dump':
    value => 'cat-file -p',
  }

  git::config::global { 'alias.hist':
    value => 'log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short'
  }

  git::config::global { 'alias.review':
    value => 'log -p --reverse -M -C -C --patience --no-prefix'
  }
}
