#!/usr/bin/env ruby
# encoding: UTF-8

require 'fileutils'

vimrc_path = File.join ENV['HOME'], '.vimrc'
vim_path = File.join ENV['HOME'], '.vim'

vim_dirs = %w(after autoload colors ftdetect ftplugin
              indent plugin syntax UltiSnips)

dst_path = File.expand_path File.join(__dir__, '..')
dst_vim = File.join(dst_path, '.vim')

FileUtils.cp vimrc_path, dst_path

vim_dirs.each do |dir|
  FileUtils.cp_r File.join(vim_path, dir), dst_vim
end
