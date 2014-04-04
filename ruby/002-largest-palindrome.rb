#!/usr/bin/env ruby

class Fixnum
  def palendrome?
    self.to_s == self.to_s.reverse
  end

  def prime?
    self.odd?  && (2..(Math.sqrt(self).round)).none? do |int|
                    self % int == 0
                  end
  end
end

if __FILE__ == $0
  largest = (0..1000).to_a.reverse.detect do |int|
    int.palendrome? && int.prime?
  end
  puts largest
end
