# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = Author.create(name:'Brothers Grimm')

10.times do |i|
  i += 1
  a.books.create(title:"A Scary Tale Part #{i}")
end
