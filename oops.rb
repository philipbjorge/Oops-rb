require 'rubygems'
require 'damerau-levenshtein'

class BasicObject
  def method_missing(id, *args, &block)
    score_method =
        self.methods.map do
         |candidate| 
            [::DamerauLevenshtein.distance(candidate.to_s, id.to_s, 1, 12), candidate]
        end
    score_method = score_method.keep_if { |c| c.first == 1 }.map { |c| c[1] }
    for method in score_method
        method = self.method(method)
        if method.arity == args.size or (method.arity < 0 and -1*method.arity >= args.size)
            # method requires same number of args as provided
            # or
            # method provides more or equal the number of optional args as supplied args
            print "\n\noops: running #{method.to_s}\n\n"
            return method.call(*args, &block)
        end
    end
    throw ::NoMethodError
  end
  
  def tset
    "ran test"
  end
end

print [1, 2, 3].collec {|i| i*2}
print "\n"
print "abcde".test