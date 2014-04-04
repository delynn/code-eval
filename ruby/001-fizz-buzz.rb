#!/usr/bin/env ruby

class FizzBuzz
  FIZZ_BUZZ = "FB"
  FIZZ      = "F"
  BUZZ      = "B"

  def initialize(fizz, buzz, limit)
    @fizz   = fizz.to_i
    @buzz   = buzz.to_i
    @limit  = limit.to_i
  end

  def buzz?(int)
    int % @buzz == 0
  end

  def fizz?(int)
    int % @fizz == 0
  end

  def fizz_buzz?(int)
    fizz?(int) && buzz?(int)
  end

  def to_s
    1.upto(@limit).map do |int|
      translate(int)
    end.join(' ')
  end

  def translate(int)
    if fizz_buzz?(int)
      FIZZ_BUZZ
    elsif fizz?(int)
      FIZZ
    elsif buzz?(int)
      BUZZ
    else
      int
    end
  end
end

if __FILE__ == $0
  puts FizzBuzz.new(*ARGV)
end
