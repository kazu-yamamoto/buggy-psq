# Buggy PSQ

This package demonstrates that GHC.Event.PSQ causes segfault. 

* On 32bit machine  AND
* GHC head is used  AND
* the -O2 option is specified


    % make
    % ./Main
    ...
    zsh: segmentation fault  ./Main
