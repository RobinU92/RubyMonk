# Reviewed 11/4/2013
module Perimeter
  class Array
    def initialize
      @size = 400
    end
  end
end

our_array   = Perimeter::Array.new
ruby_array  = Array.new

p our_array.class
p ruby_array.class



class Array
  def initialize
    @size = 400
  end
end

our_array = Array.new

p our_array.class

module Kata
  A = 5
  module Dojo
    B = 9
    A = 7
    
    class ScopeIn
      def push
        ::A
      end
    end
  end
end

A = 10
