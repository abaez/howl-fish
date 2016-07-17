# howl-fish
[![license][1i]][1p]
[![twitter][2i]][2p]

A [fish] bundle for [howl].

### DESCRIPTION
Nothing too advance. Only a small lexer for [fish] on [howl].

### USAGE
To install (for now), you need to clone the repository into your `_USERHOME/bundles` dirctory of [howl]. You can do so by running the small little script below:

``` fish
set -l howl_bundle ~/.howl/bundles
if not test -d $howl_bundle
    mkdir -p $howl_bundle
else
    hg clone ssh://hg@bitbucket.org/a_baez/howl-fish \
        $howl_bundle/fish
end
set -e $howl_bundle
```

Then simplyu open up a `*.fish` file and you should have the lexer working for you. Enjoy!

[fish]: http://fishshell.com/
[howl]: http://howl.io/
[1i]: https://img.shields.io/badge/license-MIT-green.svg
[1p]: ./LICENSE
[2i]: https://img.shields.io/badge/twitter-a_baez-blue.svg
[2p]: https://twitter.com/a_baez
