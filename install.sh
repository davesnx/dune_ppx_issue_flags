#!/bin/bash
set -e

opam switch create . 4.14.0 -y --deps-only --with-test
opam install . --deps-only
opam pin add styled-ppx 'https://github.com/davesnx/styled-ppx.git#738205fa7dd5d689bcc10dda50ad83df479511f1'
eval $(opam env)
