#!/usr/bin/env ruby

if __FILE__ == $0
  total = (ARGV.first ? File.open(ARGV.first) : DATA).readlines.inject(0) do |sum, line|
    sum += line.to_i
  end
  puts total
end

__END__
5
12
