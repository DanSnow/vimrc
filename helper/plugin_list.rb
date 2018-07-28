#!/usr/bin/env ruby
# encoding:utf-8

vimrc_path = File.expand_path File.join(__dir__, '..', '.vimrc')
vimrc = File.read(vimrc_path).each_line.to_a
readme_path = File.expand_path File.join(__dir__, '..', 'Readme.md')

index = vimrc.index { |line| line =~ /.*dein#begin.*/ }
plugin_list = vimrc.drop(index + 1)
index = plugin_list.index { |line| line =~ /.*dein#end.*/ }
plugin_list = plugin_list.take(index)

plugin_list.reject! { |line| line =~ /^$/ }

markdown_lines = []

plugin_list.each do |line|
  if (m = line.match(/^\s*""\s(.*)/))
    markdown_lines << "\n"
    markdown_lines << "## #{m[1]} ##\n"
  elsif (m = line.match(/^\s*"""\s(.*)/))
    markdown_lines << "\n"
    markdown_lines << "### #{m[1]} ###\n"
  elsif (m = line.match(/^\s*call\s+dein#add\('(.*?)'(?:$|,.*)?\)/))
    idx = line.index '/'
    if idx
      url = "https://github.com/#{m[1]}"
      url = 'https://github.com/Shougo/dein.vim' if line.match(/dein\.vim/) # Hardcode dein.vim url
      markdown_lines << "- [#{m[1].sub(%r{^.*/}, '')}](#{url})\n"
    else
      url = "https://github.com/vim-scripts/#{m[1]}"
      markdown_lines << "- [#{m[1]}](#{url})\n"
    end
  end
end

readme = File.read(readme_path).lines
idx = readme.index { |line| line =~ /\[comment\]: # Inject start/ }
if idx.nil?
  STDERR.puts 'Could not found inject point'
  puts
  puts markdown_lines
else
  new_readme = readme.take(idx + 1) + markdown_lines
  File.write(readme_path, new_readme.join)
end
