User.destroy_all

p "Seeding Users..."

u1 = User.create!(email: 'parent@awsit.com', password: '123456', name: 'Beth Sanchez', babysitter: false, address: '55 usher road, London E3 2HA')
u2 = User.create!(email: 'babysitter@awsit.com', password: '123456', name: 'Rick Sanchez', babysitter: true, address: '101 Christan St, London E1 1RX')

p "Users have successfully been created !"
