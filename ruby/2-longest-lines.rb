#!/usr/bin/env ruby

if __FILE__ == $0
  lines = (ARGV.first ? File.open(ARGV.first) : DATA).readlines
  puts lines[1..-1].sort_by(&:size).reverse[0..(lines.first.to_i - 1)]
end

__END__
2
Hello World
CodeEval
Quick Fox
A
San Francisco
