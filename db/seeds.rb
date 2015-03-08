# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recruiter.destroy_all


recruiter = Recruiter.create([
	{name: 'Carlos', 	email: 'yes@yes.com', password: 'foobar', password_confirmation:'foobar'},
	{name: 'Oscar', 	email: 'no@no.net', 	password: 'foobar', password_confirmation:'foobar'},
	{name: 'Felipe', 	email: 'no@no.net', 	password: 'foobar', password_confirmation:'foobar'},
	{name: 'YO', 			email: 'no@no.com', 	password: 'foobar', password_confirmation:'foobar'}
	])