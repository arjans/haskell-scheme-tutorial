Scheme Interpreter in Haskell
=============================

This is a Scheme interpreter written in Haskell, following the excellent tutorial, "Write Yourself a Scheme in 48 Hours", by Gary Tan. [1]

[1]: http://jonathan.tang.name/files/scheme_in_48/tutorial/overview.html

Setup
-----
Clone the repo: ```git clone https://github.com/arjans/haskell-scheme-tutorial.git```

Compile with GHC: ```ghc -package parsec -o lisp scheme-interpreter.hs```

Then run the executable: ```./lisp```

Usage
-----
You should see an interactive REPL.  Here are a few things to try:
<pre>
Lisp>>> (+ (- 4 3) (- 9 8))
2
</pre>
<pre>
Lisp>>> ((lambda (x) (+ x 10)) 5)
15
</pre>
<pre>
Lisp>>> (load "test.scm") 
(lambda ("n") ...)
Lisp>>> (add3 7)
10
</pre>

Requirements
------------
To install and run this interpreter, you'll need the [Haskell Platform](http://hackage.haskell.org/platform/), which includes GHC (the Glasgow Haskell Compiler) and all the requisite packages.

