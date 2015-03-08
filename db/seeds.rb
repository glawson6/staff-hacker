# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recruiter.destroy_all


recruiter = Recruiter.create([
	{name: 'Carlos', 	company_id: 'abc'},
	{name: 'Oscar', 	company_id: 'abc'},
	{name: 'Felipe', 	company_id: 'abc'},
	{name: 'YO', 			company_id: 'abc'}
	])