#!/bin/env ruby

ARGF.each do |line|
  output =
    if (match = /\A## (.+)/.match(line))
      "[size=x-large]#{match[1]}[/size]"
    elsif (match = /\A### (.+)/.match(line))
      "[size=large]#{match[1]}[/size]"
    elsif (match = /\A#### (.+)/.match(line))
      "[size=medium]#{match[1]}[/size]"
    elsif (match = /\A( +)(\* .+)/.match(line))
      prefix = "*" * (match[1].length / 4)
      "#{prefix}#{match[2]}"
    else
      line
    end

  if (match = %r|\[(.+)\]\((.+)\)|.match(output))
    replace = "[url=#{match[2]}]#{match[1]}[/url]"
    output.gsub!(match[0], replace)
  end

  puts output
end
