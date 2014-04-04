#!/usr/bin/env ruby

if __FILE__ == $0
  (ARGV.first ? File.open(ARGV.first) : DATA).each_line do |line|
    puts line.to_i.to_s(2).gsub('0', '').size
  end
end

__END__
10
22
56
