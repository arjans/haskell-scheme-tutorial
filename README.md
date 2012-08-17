Scheme Interpreter in Haskell
=============================

This is a Scheme interpreter written in Haskell, following the excellent tutorial, "Write Yourself a Scheme in 48 Hours", by Gary Tan. [1]

To install, run:

<pre>
git clone https://github.com/jns2/haskell-scheme-tutorial.git
</pre>

<pre>
ghc -package parsec -o lisp scheme-interpreter.hs
</pre>

<pre>
./lisp
</pre>

You should see an interactive REPL.  Here are a few things to try:

(+ (- 4 3) (- 9 8))

(load "test.scm") 
followed by (add3 7)

[1]: http://jonathan.tang.name/files/scheme_in_48/tutorial/overview.html
