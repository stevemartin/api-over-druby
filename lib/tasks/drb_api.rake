namespace :drb do
  task :api_server => :environment do
    require 'drb_server'
  end

  task :api_client => :environment do
    require 'drb_client'
  end
end
