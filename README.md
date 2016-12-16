# L20n language support in Atom [![Travis](https://img.shields.io/travis/polylingo/l20n.atom/master.svg)](https://travis-ci.org/polylingo/l20n.atom) [![Build status](https://ci.appveyor.com/api/projects/status/anfh94owqwwj6f6p/branch/master?svg=true)](https://ci.appveyor.com/project/GlenDC/l20n-atom/branch/master) [![Dependency Status](https://david-dm.org/polylingo/l20n.atom.svg)](https://david-dm.org/polylingo/l20n.atom)

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/polylingo/l20n.atom/blob/master/LICENSE)

Adds syntax highlighting of L20n (FTL) files in Atom.

Based on the official EBNF FTL Grammar as can be found here:
[GlenDC/l20n-mozilla-spec/grammar.ebnf](https://github.com/GlenDC/l20n-mozilla-spec/blob/master/grammar.ebnf) (fork)

## Contribute

Contributions are greatly appreciated. Please fork this repository and open a pull request to add snippets, make grammar tweaks, etc.

Currently all of the Atom language-support is undocumented,
and thus it can be a bit of a challenge to contribute to this repository.

Here are some resources that might be able to help:

+ [an annotated CSON file]( https://gist.github.com/DamnedScholar/622926bcd222eb1ddc483d12103fd315) provided by @DamnedScholar;
+ [language grammar naming conventions]( http://manual.macromates.com/en/language_grammars#naming_conventions) that seem to be used by Atom and give it the highlighting one would expect;

You can test changes locally:

+ by running `$ atom --test spec spec/grammar-spec.coffee` in your CLI...
+ or from within Atom: `View > Developer > Run Package Specs`;
