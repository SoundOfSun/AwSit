# Pay attention to the order !
# User is last - see dependent destroy
Booking.destroy_all
Skill.destroy_all
User.destroy_all

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

p "Seeding Bookings..."

User.where(babysitter: false).each do |user|
  2.times do
    b = Booking.new
    msg_content = ["I have two kids and I need a babysitter for this weekend !", "Need a babysitter who can drive 3 times a week asap.", "Hello, my name is Beth and I have two teenagers. I would need someone to take care of them when I have night shifts at the clinic."]
    b.user = user
    b.status = 'pending'
    b.message = msg_content.sample
    b.save
  end
end

p "Bookings have successfully been created !"
