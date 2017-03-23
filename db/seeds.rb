# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do |i|
    Task.create(
    status: "opened",
    description: "tasktasktasktasktasktasktasktasktasktasktasktasktasktasktask #{i} ",
    due_date: "2017/03/31"
    )
    end

100.times do |j|
    Child.create(
    status: "opened",
    description: "childchildchildchildchildchildchildchildchildchildchildchildchild #{j}",
    due_date: "2017/4/1",
    parent_id: j % 10
    )
end
