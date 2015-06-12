#!/usr/bin/env ruby
# encoding:utf-8

vimrc = File.read('../.vimrc').each_line.to_a

index = vimrc.index { |line| line =~ /.*plug#begin.*/ }
plugin_list = vimrc.drop(index + 1)
index = plugin_list.index { |line| line =~ /.*plug#end.*/ }
plugin_list = plugin_list.take(index)

plugin_list.reject! { |line| line =~ /^$/ }

plugin_list.each do |line|
  if (m = line.match(/"\s(.*)/))
    next if line.match(/"\s+Plug.*/)
    puts
    puts "## #{m[1]} ##"
  elsif (m = line.match(/^\s*Plug\s+'(.*?)'(?:$|,.*)/))
    idx = line.index '/'
    if idx
      url = "https://github.com/#{m[1]}"
      puts "- [#{m[1].sub(%r{^.*/}, '')}](#{url})"
    else
      url = "https://github.com/vim-scripts/#{m[1]}"
      puts "- [#{m[1]}](#{url})"
    end
  end
end
