require 'rake'

source_list = FileList['.*'].exclude('.gitignore', '.', '..').map { |f| File.expand_path(f) }
if Dir.exists? './local'
  source_list = source_list + FileList['local/.*'].exclude('local/.', 'local/..').map { |f| File.expand_path(f) }
end
destination_list = source_list.pathmap('~/%f').map { |f| File.expand_path(f) }
existing_list    = destination_list.select { |f| File.exist?(f) || File.symlink?(f) }

desc "Delete destination files/directories"
task :clean do
  rm existing_list
end

desc "Check if the destination files/directories exist already"
task :check_destination do
  abort "The following destination files/directories exist already\n#{existing_list}" if existing_list.any?
end

namespace :install do
  task :dotfiles do
    symlink(source_list, File.expand_path('~'))
  end

  task :local do
    symlink(FileList['./local/.*'], File.expand_path('~'))
  end

  task :homebrew do
    sh 'brew bundle'
  end

  task :vim do
    sh 'vim +PluginInstall +qall'
  end
end

task install: ['install:dotfiles', 'install:homebrew', 'install:vim']
