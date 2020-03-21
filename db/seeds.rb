# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.create(
      name: "test",
      email: "test@test.com",
      password: '123456',
      password_confirmation: '123456'
    )


    FlatironModule.create(branch: 'ruby', name: 'ruby')
    FlatironModule.create(branch: 'sinatra', name: 'sinatra')
    FlatironModule.create(branch: 'rails', name: 'rails')
    FlatironModule.create(branch: 'javascript', name: 'javascript')
    FlatironModule.create(branch: 'react', name: 'react')


  FlatironModule.all.each do |flatiron_module|
    5.times do
      Project.create(
        title: Faker::Lorem.sentences[0],
        description: Faker::Lorem.sentences[0],
        user_id: 1,
        flatiron_module_id: flatiron_module.id
      )
    end
  end
