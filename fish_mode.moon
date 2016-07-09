--- fish mode for howl
-- See @{README.md} for details on usage.
-- @author [Alejandro Baez](https://keybase.io/baez)
-- @copyright 2016
-- @license MIT (see LICENSE)
-- @module mode

{
  lexer: bundle_load('fish_lexer')

  comment_syntax: '#'

  auto_pairs: {
    '(': ')'
    '[': ']'
    '{': '}'
    '"': '"'
    "'": "'"
  }

  indentation: {
    more_after: {
      r'[({=]\\s*(.*|)$' -- hanging operators
      r'function\\b\\s*(.*|)$' -- function starter
      r'\\b(begin|case|switch)\\b\\s*(.*|)$' -- block starters
      { '^%s*if%s+', '%s+end$' }
      r'^\\s*else\\b'
    }

    less_for: {
      r'^\\s*end\\b'
      '^%s*}'
      r'^\\s*else\\b'
      r'^\\s*\\}\\b'
    }
  }

  default_config:
    use_tabs: false
    tab_width: 2
    indent: 2
    edge_column: 79
}
