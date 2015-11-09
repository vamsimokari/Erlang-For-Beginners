# self-learning


Erlang is a programming language that was designed to create reliable, evolvable and low latency systems. It facilitates the job of engineers building fault tolerant and maintainable systems. That is why, in contrast to most programming languages, fault tolerance, concurrency, distribution and tracing were built into the core language from the beginning.

Getting started with learning erlang 

%Note: 
The name of module must match the name of file
We need to export all the functions that we intend to call from outside
functions are listed in name/arity format (arity is number of arguments that function expects)
If we are practicing then we can export all functions using
-compile(export_all).

%How to run a Progarm 

To run the program start erlang runtime environment with 
   erl
in same directory as the current example. Then on erlang prompt use:
    erlc(f01_basic_math).
to compile the program. If compilation returns ok and not error then use
    f01_basic_math:basic_math().
to run the program and see results.
