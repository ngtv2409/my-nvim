This is my (freshly created) neovim setup utilizing the new `vim.pack` manager.

I did it again, I reconfigured my damn editor again.

The `init.lua` files will load your custom scripts, which include options and key maps.
Then it loads `plugin.lua` which will loads every files in your `plugins/` directory.
Use this as the center of all your plugins and its configs.
It is sorted so you can make sure something available before by prefix it with numbers.
No lazy loading!
