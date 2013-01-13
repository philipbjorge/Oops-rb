Oops-rb
=======

Note: GuessMethod is a similar package with many more features - http://guessmethod.rubyforge.org/

Fuzzy method invocation in Ruby

Oops overrides BasicObject's method_missing function with spell-checking functionality
which attempts to find a closely matching method (by spelling) and executing it.

I'm confident that this will improve all programmer's productivity.

##Known Limitations:
* Only trys matches within edit-distance 1

##Dependencies:
* damerau-levenshtein

##Release History:
####First Release Addendum
* Included License
* Introduced Project Logo

####First Release
* Initial basic implementation.

Done for a laugh.
Check out [Smackit-rb](https://github.com/philipbjorge/Smackit-rb), my nostalgic ruby reset method.
