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
    User.create(
      name: "Avi Flombaum",
      email: "avi@flatironschool.com",
      password: '123456',
      password_confirmation: '123456'
    )
    User.create(
      name: "Chris Metzger",
      email: "cmetzger@flatironschool.com",
      password: '123456',
      password_confirmation: '123456'
    )
    User.create(
      name: "Jennifer Hansen",
      email: "jenn@flatironschool.com",
      password: '123456',
      password_confirmation: '123456'
    )
    User.create(
      name: "Howard Devennish",
      email: "HowD@flatironschool.com",
      password: '123456',
      password_confirmation: '123456'
    )
    User.create(
      name: "Enoch",
      email: "enoch@flatironschool.com",
      password: '123456',
      password_confirmation: '123456'
    )
    User.create(
      name: "Kim Jong-Un",
      email: "supreme@leader.com",
      password: '123456',
      password_confirmation: '123456'
    )
    User.create(
      name: "Donald J. Trump",
      email: "shouldhavestayed@trumptowers.com",
      password: '123456',
      password_confirmation: '123456'
    )

    FlatironModule.create(branch: 'ruby', name: 'Ruby')
    FlatironModule.create(branch: 'sinatra', name: 'Sinatra')
    FlatironModule.create(branch: 'rails', name: 'Rails')
    FlatironModule.create(branch: 'javascript', name: 'Javascript')
    FlatironModule.create(branch: 'react', name: 'React')
    FlatironModule.create(branch: 'personal', name: 'Personal')

    myModules = ['Ruby', 'Sinatra', 'Rails', 'Javascript', 'React', 'Personal']

    100.times do
    Project.create(
        title: Faker::Lorem.sentences[0],
        description: Faker::Lorem.sentences[0],
        github: "http://www.github.com/sample-link",
        youtube: "http://www.youtube.com/sample_link",
        user_id: rand(1..7),
        flatiron_module_id: FlatironModule.find_by_name(myModules.sample).id
      )
    end