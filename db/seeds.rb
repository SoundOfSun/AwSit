User.destroy_all

p "Seeding Users..."

u1 = User.create!(email: 'parent@awsit.com', password: '123456', name: 'Beth Sanchez', babysitter: false, address: '55 usher road, London E3 2HA')
u2 = User.create!(email: 'babysitter@awsit.com', password: '123456', name: 'Rick Sanchez', babysitter: true, address: '101 Christan St, London E1 1RX', profile_description: 'Hi, I\'m Super Rick ! I rock, I\'m the best and I took care of many a Morty in my time. Not like that *sshole Jerry. Just trust me, I know what kids love.')

p "Users have successfully been created !"
