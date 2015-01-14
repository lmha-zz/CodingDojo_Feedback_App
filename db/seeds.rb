# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

surveys = Survey.create([{ title: 'Morning Session', author: 'Jay Patel' },{ title: 'Afternoon Session', author: 'Rory Pasley' }])

results = Survey.first.survey_results.create([{ helpful_scale: 7 }, { helpful_scale: 7 }, { helpful_scale: 7 }, { helpful_scale: 7 }, { helpful_scale: 9 }, { helpful_scale: 7 }, { helpful_scale: 7 }, { helpful_scale: 8 }, { helpful_scale: 10 }, { helpful_scale: 8 }, { helpful_scale: 10 }, { helpful_scale: 7 }, { helpful_scale: 7 }, { helpful_scale: 9 }, { helpful_scale: 7 }, { helpful_scale: 5 }, { helpful_scale: 6 }, { helpful_scale: 7 }, { helpful_scale: 6 }, { helpful_scale: 6 }, { helpful_scale: 8 }, { helpful_scale: 7 }, { helpful_scale: 8 }, { helpful_scale: 10 }])

results = Survey.second.survey_results.create([{ helpful_scale: 10 }, { helpful_scale: 10 }, { helpful_scale: 8 }, { helpful_scale: 5 }, { helpful_scale: 9 }, { helpful_scale: 7 }, { helpful_scale: 7 }, { helpful_scale: 8 }, { helpful_scale: 10 }, { helpful_scale: 8 }, { helpful_scale: 10 }, { helpful_scale: 7 }, { helpful_scale: 6 }, { helpful_scale: 9 }, { helpful_scale: 7 }, { helpful_scale: 5 }, { helpful_scale: 6 }, { helpful_scale: 7 }, { helpful_scale: 6 }, { helpful_scale: 6 }, { helpful_scale: 8 }, { helpful_scale: 7 }, { helpful_scale: 8 }, { helpful_scale: 10 }])
