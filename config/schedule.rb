# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:

require File.expand_path(File.dirname(__FILE__) + '/environment')
rails_env = ENV['RAILS_ENV'] || :development
set :environment, rails_env
set :job_template, "bash -l -c ':job'"
set :output, 'log/cron.log'
job_type :rake, "source /Users/user/.zshrc; export PATH=\"$HOME/.rbenv/bin:$PATH\"; eval \"$(rbenv init -)\"; cd :path && RAILS_ENV=:environment bundle exec rake :task :output"

#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

every 1.day, :at => '8:00 pm' do
  rake "tv_program:tv_program_create"
end

every 1.hours do
  rake "tv_program:tv_program_create"
end

# Learn more: http://github.com/javan/whenever
