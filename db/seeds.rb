User.destroy_all
Skill.destroy_all

p "Seeding Users..."

parent1 = User.create!(email: 'parent@awsit.com', password: '123456', name: 'Beth Sanchez', babysitter: false, address: '55 usher road, London E3 2HA')
babysitter1 = User.create!(email: 'babysitter@awsit.com', password: '123456', name: 'Rick Sanchez', babysitter: true, address: '101 Christan St, London E1 1RX', profile_description: 'Hi, I\'m Super Rick ! I rock, I\'m the best and I took care of many a Morty in my time. Not like that *sshole Jerry. Just trust me, I know what kids love.')

p "Users have successfully been created !"

p "Seeding Skills..."

skill1 = Skill.create!(babysitter: babysitter1, content: 'Driving in space')
skill2 = Skill.create!(babysitter: babysitter1, content: 'Making weapons')
skill3 = Skill.create!(babysitter: babysitter1, content: 'Research')
skill4 = Skill.create!(babysitter: babysitter1, content: 'Watching Universe TV')
skill5 = Skill.create!(babysitter: babysitter1, content: 'Making ennemies')
skill6 = Skill.create!(babysitter: babysitter1, content: 'Being awesome')

p "Skills have successfully been created !"
