puts "Cleaning the database"
User.destroy_all

puts"Creating Users"

hallyza = User.create!(email: "hallyza.rodrigues@gmail.com", password: "Site-1989")
luiz = User.create!(email: "vapeprosper@gmail.com", password: "Pqp156ldd1")
andre = User.create!(email: "decobf15@gmail", password: "Main89")

puts"Users Created"
