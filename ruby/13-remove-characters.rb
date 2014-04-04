#!/usr/bin/env ruby

if __FILE__ == $0
  (ARGV.first ? File.open(ARGV.first) : DATA).each_line do |line|
    string, chars = line.split(',')
    puts string.gsub(/#{chars.strip.chars.to_a.join('|')}/, '').strip
  end
end

__END__
how are you, abc
hello world, def
