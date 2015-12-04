# vim-color-flash

Quickly display the color under the current word.

## Installation

I've tested it with Vundle[https://github.com/VundleVim/Vundle.vim] but here is
nothing weird here that any plugin manager can't handle.

We use python, but I don't think you need vim with python, as the python calls
are done through a vim system(...) call.

## Usage

In normal mode, `gC` opens a small window with the color represented by the
current word.  Right now, it can be anything supported by Tkinter, which
includes hexadecimal and named colors.

## Contributing

So far it's only been tested on exactly one configuration of Mac OS X only.

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

Copyright (c) Tim Pope. Distributed under the same terms as Vim itself. See :help license.
