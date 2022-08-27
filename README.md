vis-shebang
============

[vis](https://github.com/martanne/vis) plugin to set syntax based on [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix)).

Please open an issue if you encounter any bugs.

example configuration
----------------------

vis-shebang uses a global variable that maps shebangs to syntaxes, in the following format.

    shebangs = {
        [<shebang>] = <syntax>
    }

Where `<syntax>` is the syntax you wish to set vis to, given your file starts with `<shebang>`.  
For example, this configuration sets files with the shebang `#!/bin/sh` to `bash` syntax:

    shebangs = {
        ["#!/bin/sh"] = "bash"
    }

Multiple shebangs can be defined at a time:

    shebangs = {
        ["#!/bin/sh"] = "bash",
        ["#!/usr/bin/env python3"] = "python"
    }

installation
-------------

Clone this repo to `$VIS_PATH/plugins/vis-shebang` and a require line to `visrc.lua`:

    require('plugins/vis-shebang')

