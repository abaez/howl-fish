--- fish lexer for howl from textadept fish.lua as reference.
-- See @{README.md} for details on usage.
-- @author [Alejandro Baez](https://keybase.io/baez)
-- @copyright 2016
-- @license MIT (see LICENSE)
-- @module fish


howl.util.lpeg_lexer ->
  c = capture
  -- shorthand for lexer.word
  ident = (alpha + '_')^1 * (alpha + digit + '_')^0

  -- Whitespace.
  ws = c 'whitespace', space

  -- Comments.
  comment = c 'comment', P'#' * scan_until eol

  -- Strings.
  dq_str = span '"', '"', '\\'
  sq_str = span "'", "'"
  string = c 'string', any {dq_str, sq_str}

  -- Numbers
  number = c 'number', any {float, digit}

  -- Keywords.
  keyword = c 'keyword', word {
    'alias', 'and', 'begin', 'bg', 'bind', 'block', 'break', 'breakpoint',
    'builtin', 'case', 'cd', 'command', 'commandline', 'complete', 'contains',
    'continue', 'count', 'dirh', 'dirs', 'echo', 'else', 'emit', 'end', 'eval',
    'exec', 'exit', 'fg', 'fish', 'fish_config', 'fish_indent', 'fish_pager',
    'fish_prompt', 'fish_right_prompt', 'fish_update_completions', 'fishd', 'for',
    'funced', 'funcsave', 'function', 'functions', 'help', 'history', 'if', 'in',
    'isatty', 'jobs', 'math', 'mimedb', 'nextd', 'not', 'open', 'or', 'popd',
    'prevd', 'psub', 'pushd', 'pwd', 'random', 'read', 'return', 'set',
    'set_color', 'source', 'status', 'string', 'switch', 'test', 'trap', 'type',
    'ulimit', 'umask', 'vared', 'while'
  }

  -- Identifiers.
  identifier = c 'identifier', ident

  -- Variables.
  var = P'$' * ((P'{' * ident * P'}') + ident)
  variable = c 'variable', var

  -- Operators.
  operator = c 'operator', S'=!<>+-/*^&|~.,:;?()[]{}'

  P {
    'all'

    all: any {
      keyword,
      identifier,
      variable,
      string,
      comment,
      number,
      operator
    }
  }
