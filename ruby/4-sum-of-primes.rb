#!/usr/bin/env ruby

class Fixnum
  def prime?
    self == 2  || (self != 1 &&
                    self.odd? &&
                    (2..(Math.sqrt(self).round)).none? do |int|
                      self % int == 0
                    end)
  end
end

if __FILE__ == $0
  int     = 0
  primes  = []

  until primes.size == 1000 do
    primes << int if int.prime?
    int += 1
  end

  puts primes.inject(:+)
end
