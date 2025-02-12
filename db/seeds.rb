puts "Cleaning the database"
User.destroy_all

puts"Creating Users"

hallyza1 = User.create!(email: "hallyza.rodrigues@hotmail.com", password: "Site-1989")
hallyza2 = User.create!(email: "hallyza.rodrigues@gmail.com", password: "Contato@4422")
hallyza3 = User.create!(email: "hallyza.rodrigues@myyahoo.com", password: "Gineco@2023")
luiz = User.create!(email: "vapeprosper@gmail.com", password: "Pqp156ldd1")
andre = User.create!(email: "decobf15@gmail.com", password: "Main89")

puts"Users Created"

# email: "hallyza.rodrigues@hotmail.com", password: minha_senha_segura
# email: "hallyza.rodrigues@gmail.com", password: Contato@4422
