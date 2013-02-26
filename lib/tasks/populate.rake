namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    puts "----------------"
    puts "--- populate ---"
    create_users
    puts "----------------"
  end
end

def create_users
    puts "--- populate"
    puts "--- users"
    User.create!(name: "Foo Bar", 
                            email: "foo1@bar.com",
                           password: "foobar",
                           password_confirmation: "foobar")

    User.create!(name: "Rosi", 
                            email: "rosi@verkko.com.br",
                           password: "foobar",
                           password_confirmation: "foobar")
    #user.save
    #puts user.to_yaml
end
