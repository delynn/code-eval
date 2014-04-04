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
  (ARGV.first ? File.open(ARGV.first) : DATA).each_line do |line|
    puts FizzBuzz.new(*line.split(' '))
  end
end

__END__
10 1 21
20 11 100
12 13 26
17 9 90
12 11 41
15 5 29
5 4 41
14 5 33
6 14 64
5 3 99
16 5 99
17 4 99
2 11 33
10 6 75
8 3 70
15 12 97
6 1 97
20 8 99
9 6 57
8 6 94
