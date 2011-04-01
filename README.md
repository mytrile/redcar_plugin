Redcar plugin manager
=====================

Redcar plugin manager is simple command-line utility to help you install,update and delete [Redcar](http://redcareditor.com/) [plugins](https://github.com/redcar/redcar/wiki/Redcar-Plugins).

Installation
------------

Just install the [gem](http://rubygems.com/redcar_plugin). Depends on [thor](https://github.com/wycats/thor).
> $ [sudo] gem install redcar_plugin

Usage
-----

### Install plugin
> $ redcar_plugin install plugin_name

### Uninstall plugin

> $ redcar_uninstall plugin_name

### Update plugin

> $ redcar_plugin update plugin_name

### Update all plugins

> $ redcar_plugin update_all

### List installed plugins

> $ redcar_plugin installed

### List avaible plugins

> $ redcar_plugin list

Contribution
------------

redcar_plugin command relies on repos.yaml which describes the name and url of the plugins.
So if you like your plugin to be available for installation through this tool, please fork the repo and add details about your plugin.

Meta
----

+ Author: Mitko Kostov
+ Website: [http://fireinside.me](http://fireinside.me)
+ Github: [mytrile](https://github.com/mytrile)
+ Twitter: [@mytrile](http://twitter.com/mytrile)

LICENSE
-------

### The MIT License

Copyright (c) 2011 Mitko Kostov

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.