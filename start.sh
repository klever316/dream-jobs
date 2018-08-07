# checking and install gems
bundle check || bundle install
# starting puma server
bundle exec puma -C config/puma.rb