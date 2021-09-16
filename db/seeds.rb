# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
  {
    email: 'test@icloud.com',
    name: 'サンプル太郎',
    password: '111111'
  },
  {
    email: 'test@gmail.com',
    name: 'サンプル次郎',
    password: '222222'
  },
    {
    email: 'test@yahoo.ne.jp',
    name: 'サンプル三郎',
    password: '333333'
  }
  ]
  )
  
  Post.create!(
    [
    { sentence: '海へ出るつもりじゃなかったし',
      image: File.open('./app/assets/images/sea.jpg'),
      user_id: (1) },
    
    { sentence: '階段の先の君へ',
      image: File.open('./app/assets/images/kaidan.jpg'),
      user_id: (2) },
      
    { sentence: '明るい部屋',
      image: File.open('./app/assets/images/room.jpg'),
      user_id: (3) },
    ]
    )