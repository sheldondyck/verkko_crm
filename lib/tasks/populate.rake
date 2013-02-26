namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    puts "----------------"
    puts "populate"
    create_users
    create_prospects
    puts "----------------"
  end
end

def create_users
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

def create_prospects
    puts "--- prospects"

    Prospect.create!(nome_contato: "Contato Nome 1",
                      nome_empressa: "Nome Empressa 1",
                      telefone_empressa: "(11) 4525-2352",
                      telefone_celular: "(11) 3526-2342",
                      endereco: "Rua Foobar 1231, Cj 124")
  
    Prospect.create!(nome_contato: "Contato Nome 2",
                      nome_empressa: "Nome Empressa 2",
                      telefone_empressa: "(11) 2345-2452",
                      telefone_celular: "(11) 6166-5142",
                      endereco: "Rua Fizbar 721, Cj 352")

    Prospect.create!(nome_contato: "Contato Nome 3",
                      nome_empressa: "Nome Empressa 3",
                      telefone_empressa: "(11) 8325-2352",
                      telefone_celular: "(11) 9126-5242",
                      endereco: "Rua Fizbar 121, Cj 312")

    Prospect.create!(nome_contato: "Contato Nome 4",
                      nome_empressa: "Nome Empressa 4",
                      telefone_empressa: "(11) 9125-2452",
                      telefone_celular: "(11) 8216-5142",
                      endereco: "Rua Foobar 21, Cj 92")

    Prospect.create!(nome_contato: "Contato Nome 5",
                      nome_empressa: "Nome Empressa 5",
                      telefone_empressa: "(11) 8345-2452",
                      telefone_celular: "(11) 2166-5142",
                      endereco: "Rua Fizbar 11, Cj 15")
end

