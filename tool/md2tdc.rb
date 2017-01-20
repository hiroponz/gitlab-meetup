#!/bin/env ruby

ARGF.each do |line|
  if (match = /\A## (.+)/.match(line))
    puts "[size=x-large]#{match[1]}[/size]"
  elsif (match = /\A### (.+)/.match(line))
    puts "[size=large]#{match[1]}[/size]"
  elsif (match = /\A#### (.+)/.match(line))
    puts "[size=medium]#{match[1]}[/size]"
  elsif (match = /\A( +)(\* .+)/.match(line))
    prefix = "*" * (match[1].length / 4)
    puts "#{prefix}#{match[2]}"
  else
    if (match = %r|\[(.+)\]\((.+)\)|.match(line))
      replace = "[url=#{match[2]}]#{match[1]}[/url]"
      line.sub!(match[0], replace)
    end
    puts line
  end
end
