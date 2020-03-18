# vis-shebang
Set [vis](https://github.com/martanne/vis) syntax based on shebang.  
*Note: This is my first attempt at writing literally anything in Lua; this project is a work in progress.*

## example configuration
vis-shebang uses a global variable that maps shebangs to syntaxes, in the following format.

    shebangs = {
        [<shebang>] = <syntax>
    }

Where `<syntax>` is the syntax you wish to set vis to, given your file starts with `<shebang>`.  
For example, this configuration sets files with the shebang `#!/bin/sh` to `bash` syntax:

    shebangs = {
        ["#!/bin/sh"] = "bash"
    }

Multiple shebangs can also be defined at a time:

    shebangs = {
        ["#!/bin/sh"] = "bash",
        ["#!/usr/bin/env python3"] = "python"
    }

## installation
Copy `vis-shebang.lua` to `$VIS_PATH/plugins`, and include the following line in your `visrc.lua`:

    require('plugins/vis-shebang')

Alternatively, you can clone this repository into `$VIS_PATH/plugins` and change the require line to:

    require('plugins/vis-shebang/vis-shebang')

