function cleanwme --wraps=git\ clean\ -fxd\;\ git\ submodule\ update\ --init\ --recursive\;\ git\ submodule\ foreach\ --recursive\ \'git\ clean\ -fxd\' --description alias\ cleanwme=git\ clean\ -fxd\;\ git\ submodule\ update\ --init\ --recursive\;\ git\ submodule\ foreach\ --recursive\ \'git\ clean\ -fxd\'
  git clean -fxd; git submodule update --init --recursive; git submodule foreach --recursive 'git clean -fxd' $argv
        
end
