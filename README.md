# Buggy PSQ

This package demonstrates that GHC.Event.PSQ causes segfault:

* On 32bit machine  AND
* GHC head is used  AND
* the \-O2 option is specified

To execute:

    % make
    % ./Main
    ...
    zsh: segmentation fault  ./Main

"PSQ.hs" and "Unique.hs" are copied from GHC.Event and their
module names are modified. `atMost` causes the segfault.
