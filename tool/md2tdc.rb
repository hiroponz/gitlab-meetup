#!/bin/env ruby

ARGF.each do |line|
  if match = /\A## (.+)/.match(line)
    puts "[size=x-large]#{match[1]}[/size]"
  elsif match = /\A### (.+)/.match(line)
    puts "[size=large]#{match[1]}[/size]"
  else
    puts line
  end
end
