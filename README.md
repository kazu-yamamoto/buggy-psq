# Buggy PSQ

This package demonstrates that GHC.Event.PSQ causes segfault
if compiled by GHC head with -O2 option.


    % make
    % ./Main
    ...
    zsh: segmentation fault  ./Main
