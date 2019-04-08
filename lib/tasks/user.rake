namespace :user do
  desc "TODO"
  task remake_data: :environment do
  	 %w[db:drop db:create db:migrate].each do |task|
      Rake::Task[task].invoke
    end
    puts "You will be prompted to create data for project."
     User.create! name:  "GROUP2", email: "ABCDEF@gmail.com", password: "password",
        password_confirmation: "password", role:"admin"
        puts "The data was created successfully."
    end
    
  end
