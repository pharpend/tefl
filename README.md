# tefl - trivially easy file locker

tefl (or TEFL, if you prefer) is a Haskell library and program for
creating and accessing portable encrypted archives. tefl is licensed
under the [GNU General Public License][gpl] (GPL). A copy of the GPL can
be found in the [LICENSE][lic] file.

## Installation and usage

You first need to install [Git][gitch2] and [the Haskell Stack][stk].

    git clone https://gitlab.com/pharpend/tefl.git
    cd tefl
    stack setup
    stack build

This will build a sandboxed version of tefl. You can run it with

    stack exec -- tefl

If you would like stack to copy the binaries to somewhere in your
`$PATH`, run

    stack build --copy-bins

You can run the test suite with

    stack test

## Contacting the authors

The main author is Peter Harpending.

* Email: <peter@harpending.org>
* IRC: `pharpend` on FreeNode.net

[gitch2]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[gpl]: https://gnu.org/licenses/gpl
[lic]: LICENSE
[stk]: http://haskellstack.org
