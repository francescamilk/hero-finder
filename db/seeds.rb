puts 'Cleaning db...'
Character.destroy_all

puts 'Creating series...'
all = Serie.create!(title: 'All Marvels')

puts 'Creating comics...'
thor_com = Comic.create!(title: 'Thor & friends', serie: all)
iron_man_com = Comic.create!(title: 'Iron Man The Beginning', serie: all)

puts 'Creating characters...'
thor = Character.create!(name: 'Thor', comic: thor_com)
iron_man = Character.create!(name: 'Iron Man', comic: iron_man_com)
iron_woman = Character.create!(name: 'Iron Woman', comic: iron_man_com)

puts 'Done!'
