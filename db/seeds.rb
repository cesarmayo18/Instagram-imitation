# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Post.delete_all

user = User.create(email: 'romerramos@gmail.com', password: '123123', avatar: File.new("#{Rails.root}/app/assets/images/avatar.png"))
user.create_profile(name: 'Romer Ramos', username: 'romerramos', gender: :male, birthdate: DateTime.now, bio: 'Esta es mi BIO')

Post.create(location: '2178217812;1278218712', description: 'Hola mundo', user_id: user.id)
Post.create(location: '2178217812;1278218712', description: 'Chao mundo', user_id: user.id)
Post.create(location: '2178217812;1278218712', description: 'Esto es una prueba #soygafo', user_id: user.id)