# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create (
  email: "deco89@gmail.com"
  encrypted_password: "senha1"
)

user2 = User.create (
  email: "vapeprosper@gmail.com"
  encrypted_password: "senha1"
)

user3 = User.create (
  email: "hallyza.rodrigues@gmail.com"
  password: "senha1"
)
