--- fish lexer for howl
-- See @{README.md} for details on usage.
-- @author [Alejandro Baez](https://keybase.io/baez)
-- @copyright 2016
-- @license MIT (see LICENSE)
-- @module fish

mode_reg =
  name: 'fish'
  aliases: 'fish'
  extensions: 'fish'
  create: -> bundle_load('fish_mode')
  parent: 'curly_mode'

howl.mode.register mode_reg

unload = -> howl.mode.unregister 'fish'

return {
  info:
    author: 'Alejandro Baez https://keybase.io/baez',
    description: 'Fish language support',
    license: 'MIT',
  :unload
}
