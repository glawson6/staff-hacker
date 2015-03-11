# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first

# User.destroy_all
# user = User.create(name: 'staff', email: 'staff@hack.net', password: 'foobar', password_confirmation:'foobar')

# rating = Rating.create([{
#   comments: "He's great",
#   rate: 4
#   }])

Company.destroy_all

apex_systems = Company.find_or_create_by({
  name: "Apex Systems, Inc",
  website: "www.apexsystemsinc.com"})

diversant = Company.find_or_create_by({
  name: "Diversant LLC",
  website: "www.diversant.com"})

hunter_technical_resources = Company.find_or_create_by({
  name: "Hunter Technical Resources",
  website: "www.htrjobs.com"})

insight_global = Company.find_or_create_by({
  name: "Insight Global",
  website: "www.insightglobal.net"})

matrix_resources = Company.find_or_create_by({
  name: "Matrix Resources",
  website: "matrixresources.com"})

tek_systems = Company.find_or_create_by({
  name: "TEKsystems",
  website: "www.teksystems.com"})

recruiters_for_apex_systems = [
  {
    first_name: "Nicole",
    last_name: "Britt",
  },
  {
    first_name: "Emily",
    last_name: "Yeager",
  },
  {
    first_name: "Caroline",
    last_name: "Wills",
  },
  {
    first_name: "Cory",
    last_name: "Wilson",
  },
  {
    first_name: "Marisa",
    last_name: "McEntee",
  },
  {
    first_name: "Jessica",
    last_name: "Packer",
  },
  {
    first_name: "Matt",
    last_name: "McDill",
  },
  {
    first_name: "Jerry",
    last_name: "McFadden",
  },
  {
    first_name: "Doug",
    last_name: "Kenney",
  },
  {
    first_name: "Jessica",
    last_name: "Steiger",
  },
  {
    first_name: "Nick",
    last_name: "Gentry",
  },
  {
    first_name: "Bob",
    last_name: "Rawlinson",
  },
  {
    first_name: "Kelly",
    last_name: "Brooks Lester",
  },
  {
    first_name: "Kelly",
    last_name: "Hessler",
  },
  {
    first_name: "Colin",
    last_name: "Mulholland",
  },
  {
    first_name: "Jay",
    last_name: "Finch",
  },
  {
    first_name: "Lorena",
    last_name: "Fugedy",
  },
  {
    first_name: "Mary Beth",
    last_name: "Ehalt",
  },
  {
    first_name: "Bailey",
    last_name: "Montalban",
  },
  {
    first_name: "Alan",
    last_name: "Taylor",
  },
  {
    first_name: "Chris",
    last_name: "Croft",
  },
  {
    first_name: "Lindsey",
    last_name: "Hoy",
  },
  {
    first_name: "Jason",
    last_name: "Mangus",
  }
]

recruiters_for_apex_systems.each do |recruiter|
  apex_systems.recruiters.create(recruiter)
end

recruiters_for_diversant = [
  { first_name: "Ben",
    last_name: "Puckett"
  },
  { first_name: "Garrett",
    last_name: "Brown"
  },
  { first_name: "Nicole",
    last_name: "Crihfield"
  },
  { first_name: "Courtney",
    last_name: "Robinson"
  },
  { first_name: "Gatina",
    last_name: "Foy"
  },
  { first_name: "Nicole",
    last_name: "Lemm"
  },
  { first_name: "Nichole",
    last_name: "Bobbitt",
  },
  { 
    first_name: "Andrew",
    last_name: "Golden"
  },
  { first_name: "Geoff",
    last_name: "Waletich"
  },
  { first_name: "Kayla",
    last_name: "Vercande"
  },
  { first_name: "Grace",
    last_name: "Ramey"
  },
  { first_name: "Callie",
    last_name: "Johnson"
  },
  { first_name: "Alex",
    last_name: "Rogers"
  },
  { first_name: "Brian",
    last_name: "Bowes"
  },
  { first_name: "Diana",
    last_name: "McCulloch"
  },
  { first_name: "Rob",
    last_name: "Cooper"
  },
  { first_name: "Aisha",
    last_name: "Tan"
  },
  { first_name: "Sean",
    last_name: "Kiernan"
  },
  { first_name: "Kyle",
    last_name: "Mundy"
  },
  { first_name: "Emily",
    last_name: "Schultz"
  }
]

recruiters_for_diversant.each do |recruiter|
  diversant.recruiters.create(recruiter)
end

recruiters_for_hunter_technical_resources =  [
  {
  first_name: "Rachel",
  last_name: "Ko"
  },
  {
  first_name: "Logan",
  last_name: "Hernandez"
  },
  {
  first_name: "Angela",
  last_name: "Kirkland"
  },
  {
  first_name: "Matt",
  last_name: "Brown"
  },
  {
  first_name: "Stephanie",
  last_name: "Cahill"
  },
  {
  first_name: "Anne Marie",
  last_name: "Laurel"
  },
  {
  first_name: "Brian",
  last_name: "Fowler"
  },
  {
  first_name: "Michelle",
  last_name: "Lee"
  },
  {
  first_name: "Robb",
  last_name: "Zelinski"
  },
  {
  first_name: "Norris",
  last_name: "Clay"
  },
  {
  first_name: "Jason",
  last_name: "Wilson"
  },
  {
  first_name: "Kelsey",
  last_name: "Scantland"
  },
  {
  first_name: "Nicholas",
  last_name: "Claytor"
  },
  {
  first_name: "Sara",
  last_name: "Flood"
  },
  {
  first_name: "Brian",
  last_name: "Seals"
  },
  {
  first_name: "Adria",
  last_name: "Deeds"
  },
  {
  first_name: "Jason",
  last_name: "Clayton"
  },
  {
  first_name: "Tracy",
  last_name: "Bailey"
  },
  {
  first_name: "Donnie",
  last_name: "Franks"
  },
  {
  first_name: "Lena",
  last_name: "Graham"
  },
  {
  first_name: "Keun",
  last_name: "Ko"
  }
]

recruiters_for_hunter_technical_resources.each do |recruiter|
  hunter_technical_resources.recruiters.create(recruiter)
end


recruiters_for_insight_global = [
  {
  first_name: "Brett",
  last_name: "Alter"
  },
  {
  first_name: "Jenn",
  last_name: "Yudell"
  },
  {
  first_name: "Lauren",
  last_name: "Klein"
  },
  {
  first_name: "Ashley",
  last_name: "Robinson"
  },
  {
  first_name: "Katie",
  last_name: "Gane"
  },
  {
  first_name: "Kristin",
  last_name: "Cooper"
  },
  {
  first_name: "Philip",
  last_name: "Shevlin"
  },
  {
  first_name: "Laura",
  last_name: "Thomas"
  },
  {
  first_name: "Laura",
  last_name: "Guilday"
  },
  {
  first_name: "Carter",
  last_name: "Scurry"
  },
  {
  first_name: "Allison",
  last_name: "Smith"
  },
  {
  first_name: "Brittany",
  last_name: "Wallace"
  },
  {
  first_name: "Richard",
  last_name: "Amaker"
  },
  {
  first_name: "Samantha",
  last_name: "Fischer"
  },
  {
  first_name: "Laura",
  last_name: "Clark"
  },
  {
  first_name: "Tyler",
  last_name: "Starnes"
  },
  {
  first_name: "Carrie",
  last_name: "Boyce"
  },
  {
  first_name: "Brittany",
  last_name: "Dixon"
  },
  {
  first_name: "Josh",
  last_name: "Seider"
  },
  {
  first_name: "Trip",
  last_name: "Horn"
  },
  {
  first_name: "Molly",
  last_name: "Dozier"
  },
  {
  first_name: "Kyle",
  last_name: "Clifford"
  },
  {
  first_name: "Tim",
  last_name: "Stutz"
  },
  {
  first_name: "Claude",
  last_name: "Majester"
  },
  {
  first_name: "Dani",
  last_name: "Rifkin"
  }
]

recruiters_for_insight_global.each do |recruiter|
  insight_global.recruiters.create(recruiter)
end

recruiters_for_matrix_resources = [
  {
  first_name: "Ross G.",
  last_name: "Teich"
  },
  {
  first_name: "Elizabeth",
  last_name: "Jafarzadeh"
  },
  {
  first_name: "Robert",
  last_name: "Bouchard [LION]"
  },
  {
  first_name: "Paul",
  last_name: "Noetling"
  },
  {
  first_name: "Ryan",
  last_name: "Case"
  },
  {
  first_name: "Leisa",
  last_name: "Richman"
  },
  {
  first_name: "Lawrence",
  last_name: "Inman"
  },
  {
  first_name: "Suzy",
  last_name: "Yonyoff"
  },
  {
  first_name: "Kelly",
  last_name: "Gardner"
  },
  {
  first_name: "Erik",
  last_name: "Davids"
  },
  {
  first_name: "Rachel",
  last_name: "LeClair"
  },
  {
  first_name: "Chris",
  last_name: "Gedgoudas"
  },
  {
  first_name: "Bryan",
  last_name: "Keith"
  },
  {
  first_name: "Jesse",
  last_name: "Parker"
  },
  {
  first_name: "Samyuktha (Sam)",
  last_name: "Prakash"
  },
  {
  first_name: "Mike",
  last_name: "Royal"
  },
  {
  first_name: "Jon",
  last_name: "Bass"
  },
  {
  first_name: "Jesse",
  last_name: "Springston"
  },
  {
  first_name: "Kelly",
  last_name: "Reznicek Thielemann"
  },
  {
  first_name: "Karen",
  last_name: "Wilson"
  },
  {
  first_name: "Nikki",
  last_name: "Garmany"
  },
  {
  first_name: "Sage",
  last_name: "Kroell"
  },
  {
  first_name: "Laura",
  last_name: "Jones"
  }
]

recruiters_for_matrix_resources.each do |recruiter|
  matrix_resources.recruiters.create(recruiter)
end

recruiters_for_tek_systems = [
  { 
  first_name: "Doug",
  last_name: "Cole"
  },
  {
  first_name: "Jemia",
  last_name: "Young, MBA"
  },
  {
  first_name: "Colin",
  last_name: "Brune"
  },
  {
  first_name: "Christy",
  last_name: "Bruno"
  },
  {
  first_name: "Phillip",
  last_name: "Reese"
  },
  {
  first_name: "Bobby",
  last_name: "Patterson"
  },
  {
  first_name: "Courtney",
  last_name: "Gams"
  },
  {
  first_name: "Thomas",
  last_name: "Crouch"
  },
  {
  first_name: "Gloria",
  last_name: "Coan"
  },
  {
  first_name: "Jessica",
  last_name: "Skower"
  },
  {
  first_name: "Mike",
  last_name: "Jaeggi"
  },
  {
  first_name: "Danielle",
  last_name: "Hancharik"
  },
  {
  first_name: "Scott",
  last_name: "Gibbons"
  },
  {
  first_name: "Danielle",
  last_name: "Goch"
  },
  {
  first_name: "Ansley",
  last_name: "Schroth"
  },
  {
  first_name: "Shawn",
  last_name: "Tyska"
  },
  {
  first_name: "Julie",
  last_name: "Cutler"
  },
  {
  first_name: "Tara",
  last_name: "Hazle"
  },
  {
  first_name: "William (Billy)",
  last_name: "Cox"
  },
  {
  first_name: "Brian",
  last_name: "Mack"
  },
  {                                                                                                                                                                                                                                                              
  first_name: "Chris",
  last_name: "Williams"
  },
  {
  first_name: "A.J.",
  last_name: "Bauser"
  },
  {
  first_name: "Evan",
  last_name: "Lassiter"
  }
]

recruiters_for_tek_systems.each do |recruiter|
  tek_systems.recruiters.create(recruiter)
end


Company.destroy_all
User.destroy_all
user = User.create(name: 'staff', email: 'staff@hack.net', password: 'foobar', password_confirmation:'foobar')

company = Company.create(name: 'TapTech', website: 'http://taptech.net')

recruiter = company.recruiters.create(name: 'Tap')

