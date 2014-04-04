#!/usr/bin/env ruby

if __FILE__ == $0
  (ARGV.first ? File.open(ARGV.first) : DATA).each_line do |line|
    puts !!(line =~ /\A(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}\Z/i)
  end
end

__END__
foo@bar.com
this is not an email id
admin#codeeval.com
good123@bad.com
