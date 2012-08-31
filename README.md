Just a try for [a Game of Thrones challenge](http://www.reddit.com/r/dailyprogrammer/comments/v3afh/6152012_challenge_65_intermediate/)



The ```prolog_creator.rb``` is just a ruby script to create the prolog file.

It works with GNU Prolog (```brew install gprolog```)

Just do :

        $ gprolog 
        GNU Prolog 1.4.1
        By Daniel Diaz
        Copyright (C) 1999-2012 Daniel Diaz
        | ?- [main].
        compiling /Users/lyset/Documents/Code/GoT_Prolog/main.pl for byte code...
        /Users/lyset/Documents/Code/GoT_Prolog/main.pl compiled, 138 lines read - 18313 bytes written, 22 ms
        
        (4 ms) yes
        || ?- ancestors_of(rickon_stark, X).

        X = catelyn_tully ? a
        
        X = eddard_stark
        
        X = hoster_tully
        
        X = minisa_whent
        
        X = rickard_stark
        
        (1 ms) no