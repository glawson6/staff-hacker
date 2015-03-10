# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recruiter.destroy_all
Company.destroy_all

company1 = Company.create!(
  { name: 'General Assembly', website: 'www.generalassemb.ly' }
)

company2 = Company.create!(
  { name: 'The Iron Yard', website: 'www.theironyard.com' }
)

john = Recruiter.create!([
  { name: 'John',  company_id: company1.id },
  { name: 'Oscar', company_id: company1.id },
  { name: 'John', company_id: company2.id },
  { name: 'Raven', company_id: company2.id }
])
