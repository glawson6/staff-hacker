# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Company.destroy_all
User.destroy_all
user = User.create(name: 'staff', email: 'staff@hack.net', password: 'foobar', password_confirmation:'foobar')

company = Company.create(name: 'TapTech', website: 'http://taptech.net')

recruiter = company.recruiters.create(name: 'Tap')
