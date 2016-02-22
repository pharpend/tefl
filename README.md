# tefl - Trivially Easy File Locker

TEFL, or the Trivially Easy File Locker. is a program that allows you to
create encrypted containers storing arbitrary data. It is essentially a
secure way to interface with .tar.gpg files. TEFL includes options for
compression and different types of encryption. TEFL stores everything in
open formats, as to allow interaction with foreign programs. N.B. open
formats are typically more secure than closed formats.

## Installation

You need [git][git-install] as well as [the Haskell Stack][haskellstack]
to install this program, at least at the moment. It doesn't do anything
yet, so don't get your hopes up.

    git clone https://github.com/pharpend/tefl.git
    cd tefl
    stack setup
    stack build
    
## Bugs

You can report any bugs and/or feature requests to
[the GitHub bug tracker][tefl-issues]. If it's a security vulnerability,
please email me directly at `peter@harpending.org`. My PGP key is
[C1C110AB][pgpkey].

## Contacting me

If you wish, you can email me directly at `peter@harpending.org`. As I
mentioned before, my PGP key is [C1C110AB][pgpkey].

[git-install]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[haskellstack]: http://docs.haskellstack.org/en/stable/README.html
[tefl-issues]: https://github.com/pharpend/tefl/issues
[pgpkey]: https://pgp.mit.edu/pks/lookup?op=get&search=0xC976C356C1C110AB
