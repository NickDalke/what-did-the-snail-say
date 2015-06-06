# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Snail.create([{name: "Blaise", location: "table", gender: "follow the markdown", spirit_animal: "dog", greatest_accomplishment: "dog",},])
 Comment.create([
 {body: "Thanks!", snail_id: 1 },
 {body: "Thanks!", snail_id: 2 },
 {body: "Thanks!", snail_id: 1 }])