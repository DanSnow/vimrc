#!/usr/bin/env ruby
# encoding:utf-8

vimrc_path = File.expand_path File.join(__dir__, '..', '.vimrc')
vimrc = File.read(vimrc_path).each_line.to_a

index = vimrc.index { |line| line =~ /.*plug#begin.*/ }
plugin_list = vimrc.drop(index + 1)
index = plugin_list.index { |line| line =~ /.*plug#end.*/ }
plugin_list = plugin_list.take(index)

plugin_list.reject! { |line| line =~ /^$/ }

markdown_lines = []

plugin_list.each do |line|
  if (m = line.match(/^""\s(.*)/))
    markdown_lines << ''
    markdown_lines << "## #{m[1]} ##"
  elsif (m = line.match(/^"""\s(.*)/))
    markdown_lines << ''
    markdown_lines << "### #{m[1]} ###"
  elsif (m = line.match(/^\s*Plug\s+'(.*?)'(?:$|,.*)/))
    idx = line.index '/'
    if idx
      url = "https://github.com/#{m[1]}"
      markdown_lines << "- [#{m[1].sub(%r{^.*/}, '')}](#{url})"
    else
      url = "https://github.com/vim-scripts/#{m[1]}"
      markdown_lines << "- [#{m[1]}](#{url})"
    end
  end
end

readme = File.read('../Readme.md').each_line.map(&:chomp)
idx = readme.index { |line| line =~ /\[comment\]: # Inject start/ }
if idx.nil?
  STDERR.puts 'Could not found inject point'
  puts
  puts markdown_lines
else
  new_readme = readme.take(idx + 1) + markdown_lines
  File.write('../Readme.md', new_readme.join("\n"))
end
