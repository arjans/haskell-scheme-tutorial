Scheme Interpreter in Haskell
=============================

This is a Scheme interpreter written in Haskell, following the excellent tutorial, "Write Yourself a Scheme in 48 Hours", by Gary Tan. [1]

To install, run:

```git clone https://github.com/jns2/haskell-scheme-tutorial.git```

```ghc -package parsec -o lisp scheme-interpreter.hs```

``` ./lisp```

You should see an interactive REPL.  Here are a few things to try:

(+ (- 4 3) (- 9 8))

((lambda (x) (+ x 10)) 5)

(load "test.scm") 
followed by:
(add3 7)

[1]: http://jonathan.tang.name/files/scheme_in_48/tutorial/overview.html
