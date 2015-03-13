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

image_urls =["http://www.easyvectors.com/assets/images/vectors/afbig/6f079da94ffb386be97ac0361de3ec2c-girl-face-clip-art.jpg",
"http://clipartpictures.org/images/stories/peopleclipart/boy/Boy_Face_Cartoon_5_Boy_Clipart_Pictures.png",
"http://images.clipartpanda.com/boy-20clip-20art-boy_face_cartoon_clip_art_18791.jpg",
"http://images.clipartpanda.com/face-clip-art-lady_face_clip_art_23104.jpg",
"http://images.clipartpanda.com/scalp-clipart-gas_mask_clip_art_22994.jpg"]

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
    image_url: image_urls.sample
  },
  {
    first_name: "Emily",
    last_name: "Yeager",
    image_url: image_urls.sample
  },
  {
    first_name: "Caroline",
    last_name: "Wills",
    image_url: image_urls.sample
  },
  {
    first_name: "Cory",
    last_name: "Wilson",
    image_url: image_urls.sample
  },
  {
    first_name: "Marisa",
    last_name: "McEntee",
    image_url: image_urls.sample
  },
  {
    first_name: "Jessica",
    last_name: "Packer",
    image_url: image_urls.sample
  },
  {
    first_name: "Matt",
    last_name: "McDill",
    image_url: image_urls.sample
  },
  {
    first_name: "Jerry",
    last_name: "McFadden",
    image_url: image_urls.sample
  },
  {
    first_name: "Doug",
    last_name: "Kenney",
    image_url: image_urls.sample
  },
  {
    first_name: "Jessica",
    last_name: "Steiger",
    image_url: image_urls.sample
  },
  {
    first_name: "Nick",
    last_name: "Gentry",
    image_url: image_urls.sample
  },
  {
    first_name: "Bob",
    last_name: "Rawlinson",
    image_url: image_urls.sample
  },
  {
    first_name: "Kelly",
    last_name: "Brooks Lester",
    image_url: image_urls.sample
  },
  {
    first_name: "Kelly",
    last_name: "Hessler",
    image_url: image_urls.sample
  },
  {
    first_name: "Colin",
    last_name: "Mulholland",
    image_url: image_urls.sample
  },
  {
    first_name: "Jay",
    last_name: "Finch",
    image_url: image_urls.sample
  },
  {
    first_name: "Lorena",
    last_name: "Fugedy",
    image_url: image_urls.sample
  },
  {
    first_name: "Mary Beth",
    last_name: "Ehalt",
    image_url: image_urls.sample
  },
  {
    first_name: "Bailey",
    last_name: "Montalban",
    image_url: image_urls.sample
  },
  {
    first_name: "Alan",
    last_name: "Taylor",
    image_url: image_urls.sample
  },
  {
    first_name: "Chris",
    last_name: "Croft",
    image_url: image_urls.sample
  },
  {
    first_name: "Lindsey",
    last_name: "Hoy",
    image_url: image_urls.sample
  },
  {
    first_name: "Jason",
    last_name: "Mangus",
    image_url: image_urls.sample
  }
]

recruiters_for_apex_systems.each do |recruiter|
  apex_systems.recruiters.create(recruiter)
end

recruiters_for_diversant = [
  { first_name: "Ben",
    last_name: "Puckett",
    image_url: image_urls.sample
  },
  { first_name: "Garrett",
    last_name: "Brown",
    image_url: image_urls.sample
  },
  { first_name: "Nicole",
    last_name: "Crihfield"
  },
  { first_name: "Courtney",
    last_name: "Robinson",
    image_url: image_urls.sample
  },
  { first_name: "Gatina",
    last_name: "Foy",
    image_url: image_urls.sample
  },
  { first_name: "Nicole",
    last_name: "Lemm",
    image_url: image_urls.sample
  },
  { first_name: "Nichole",
    last_name: "Bobbitt",
    image_url: image_urls.sample
  },
  {
    first_name: "Andrew",
    last_name: "Golden",
    image_url: image_urls.sample
  },
  { first_name: "Geoff",
    last_name: "Waletich",
    image_url: image_urls.sample
  },
  { first_name: "Kayla",
    last_name: "Vercande",
    image_url: image_urls.sample
  },
  { first_name: "Grace",
    last_name: "Ramey",
    image_url: image_urls.sample
  },
  { first_name: "Callie",
    last_name: "Johnson",
    image_url: image_urls.sample
  },
  { first_name: "Alex",
    last_name: "Rogers",
    image_url: image_urls.sample
  },
  { first_name: "Brian",
    last_name: "Bowes",
    image_url: image_urls.sample
  },
  { first_name: "Diana",
    last_name: "McCulloch",
    image_url: image_urls.sample
  },
  { first_name: "Rob",
    last_name: "Cooper",
    image_url: image_urls.sample
  },
  { first_name: "Aisha",
    last_name: "Tan",
    image_url: image_urls.sample
  },
  { first_name: "Sean",
    last_name: "Kiernan",
    image_url: image_urls.sample
  },
  { first_name: "Kyle",
    last_name: "Mundy",
    image_url: image_urls.sample
  },
  { first_name: "Emily",
    last_name: "Schultz",
    image_url: image_urls.sample
  }
]

recruiters_for_diversant.each do |recruiter|
  diversant.recruiters.create(recruiter)
end

recruiters_for_hunter_technical_resources =  [
  {
  first_name: "Rachel",
  last_name: "Ko",
  image_url: image_urls.sample
  },
  {
  first_name: "Logan",
  last_name: "Hernandez",
  image_url: image_urls.sample
  },
  {
  first_name: "Angela",
  last_name: "Kirkland",
  image_url: image_urls.sample
  },
  {
  first_name: "Matt",
  last_name: "Brown",
  image_url: image_urls.sample
  },
  {
  first_name: "Stephanie",
  last_name: "Cahill",
  image_url: image_urls.sample
  },
  {
  first_name: "Anne Marie",
  last_name: "Laurel",
  image_url: image_urls.sample
  },
  {
  first_name: "Brian",
  last_name: "Fowler",
  image_url: image_urls.sample
  },
  {
  first_name: "Michelle",
  last_name: "Lee",
  image_url: image_urls.sample
  },
  {
  first_name: "Robb",
  last_name: "Zelinski",
  image_url: image_urls.sample
  },
  {
  first_name: "Norris",
  last_name: "Clay",
  image_url: image_urls.sample
  },
  {
  first_name: "Jason",
  last_name: "Wilson",
  image_url: image_urls.sample
  },
  {
  first_name: "Kelsey",
  last_name: "Scantland",
  image_url: image_urls.sample
  },
  {
  first_name: "Nicholas",
  last_name: "Claytor",
  image_url: image_urls.sample
  },
  {
  first_name: "Sara",
  last_name: "Flood",
  image_url: image_urls.sample
  },
  {
  first_name: "Brian",
  last_name: "Seals",
  image_url: image_urls.sample
  },
  {
  first_name: "Adria",
  last_name: "Deeds",
  image_url: image_urls.sample
  },
  {
  first_name: "Jason",
  last_name: "Clayton",
  image_url: image_urls.sample
  },
  {
  first_name: "Tracy",
  last_name: "Bailey",
  image_url: image_urls.sample
  },
  {
  first_name: "Donnie",
  last_name: "Franks",
  image_url: image_urls.sample
  },
  {
  first_name: "Lena",
  last_name: "Graham",
  image_url: image_urls.sample
  },
  {
  first_name: "Keun",
  last_name: "Ko",
  image_url: image_urls.sample
  }
]

recruiters_for_hunter_technical_resources.each do |recruiter|
  hunter_technical_resources.recruiters.create(recruiter)
end


recruiters_for_insight_global = [
  {
  first_name: "Brett",
  last_name: "Alter",
  image_url: image_urls.sample
  },
  {
  first_name: "Jenn",
  last_name: "Yudell",
  image_url: image_urls.sample
  },
  {
  first_name: "Lauren",
  last_name: "Klein",
  image_url: image_urls.sample
  },
  {
  first_name: "Ashley",
  last_name: "Robinson",
  image_url: image_urls.sample
  },
  {
  first_name: "Katie",
  last_name: "Gane",
  image_url: image_urls.sample
  },
  {
  first_name: "Kristin",
  last_name: "Cooper",
  image_url: image_urls.sample
  },
  {
  first_name: "Philip",
  last_name: "Shevlin",
  image_url: image_urls.sample
  },
  {
  first_name: "Laura",
  last_name: "Thomas",
  image_url: image_urls.sample
  },
  {
  first_name: "Laura",
  last_name: "Guilday",
  image_url: image_urls.sample
  },
  {
  first_name: "Carter",
  last_name: "Scurry",
  image_url: image_urls.sample
  },
  {
  first_name: "Allison",
  last_name: "Smith",
  image_url: image_urls.sample
  },
  {
  first_name: "Brittany",
  last_name: "Wallace",
  image_url: image_urls.sample
  },
  {
  first_name: "Richard",
  last_name: "Amaker",
  image_url: image_urls.sample
  },
  {
  first_name: "Samantha",
  last_name: "Fischer",
  image_url: image_urls.sample
  },
  {
  first_name: "Laura",
  last_name: "Clark",
  image_url: image_urls.sample
  },
  {
  first_name: "Tyler",
  last_name: "Starnes",
  image_url: image_urls.sample
  },
  {
  first_name: "Carrie",
  last_name: "Boyce",
  image_url: image_urls.sample
  },
  {
  first_name: "Brittany",
  last_name: "Dixon",
  image_url: image_urls.sample
  },
  {
  first_name: "Josh",
  last_name: "Seider",
  image_url: image_urls.sample
  },
  {
  first_name: "Trip",
  last_name: "Horn",
  image_url: image_urls.sample
  },
  {
  first_name: "Molly",
  last_name: "Dozier",
  image_url: image_urls.sample
  },
  {
  first_name: "Kyle",
  last_name: "Clifford",
  image_url: image_urls.sample
  },
  {
  first_name: "Tim",
  last_name: "Stutz",
  image_url: image_urls.sample
  },
  {
  first_name: "Claude",
  last_name: "Majester",
  image_url: image_urls.sample
  },
  {
  first_name: "Dani",
  last_name: "Rifkin",
  image_url: image_urls.sample
  }
]

recruiters_for_insight_global.each do |recruiter|
  insight_global.recruiters.create(recruiter)
end

recruiters_for_matrix_resources = [
  {
  first_name: "Ross G.",
  last_name: "Teich",
  image_url: image_urls.sample
  },
  {
  first_name: "Elizabeth",
  last_name: "Jafarzadeh",
  image_url: image_urls.sample
  },
  {
  first_name: "Robert",
  last_name: "Bouchard [LION]",
  image_url: image_urls.sample
  },
  {
  first_name: "Paul",
  last_name: "Noetling",
  image_url: image_urls.sample
  },
  {
  first_name: "Ryan",
  last_name: "Case",
  image_url: image_urls.sample
  },
  {
  first_name: "Leisa",
  last_name: "Richman",
  image_url: image_urls.sample
  },
  {
  first_name: "Lawrence",
  last_name: "Inman",
  image_url: image_urls.sample
  },
  {
  first_name: "Suzy",
  last_name: "Yonyoff",
  image_url: image_urls.sample
  },
  {
  first_name: "Kelly",
  last_name: "Gardner",
  image_url: image_urls.sample
  },
  {
  first_name: "Erik",
  last_name: "Davids",
  image_url: image_urls.sample
  },
  {
  first_name: "Rachel",
  last_name: "LeClair",
  image_url: image_urls.sample
  },
  {
  first_name: "Chris",
  last_name: "Gedgoudas",
  image_url: image_urls.sample
  },
  {
  first_name: "Bryan",
  last_name: "Keith",
  image_url: image_urls.sample
  },
  {
  first_name: "Jesse",
  last_name: "Parker",
  image_url: image_urls.sample
  },
  {
  first_name: "Samyuktha (Sam)",
  last_name: "Prakash",
  image_url: image_urls.sample
  },
  {
  first_name: "Mike",
  last_name: "Royal",
  image_url: image_urls.sample
  },
  {
  first_name: "Jon",
  last_name: "Bass",
  image_url: image_urls.sample
  },
  {
  first_name: "Jesse",
  last_name: "Springston",
  image_url: image_urls.sample
  },
  {
  first_name: "Kelly",
  last_name: "Reznicek Thielemann",
  image_url: image_urls.sample
  },
  {
  first_name: "Karen",
  last_name: "Wilson",
  image_url: image_urls.sample
  },
  {
  first_name: "Nikki",
  last_name: "Garmany",
  image_url: image_urls.sample
  },
  {
  first_name: "Sage",
  last_name: "Kroell",
  image_url: image_urls.sample
  },
  {
  first_name: "Laura",
  last_name: "Jones",
  image_url: image_urls.sample
  }
]

recruiters_for_matrix_resources.each do |recruiter|
  matrix_resources.recruiters.create(recruiter)
end

recruiters_for_tek_systems = [
  {
  first_name: "Doug",
  last_name: "Cole",
  image_url: image_urls.sample
  },
  {
  first_name: "Jemia",
  last_name: "Young, MBA",
  image_url: image_urls.sample
  },
  {
  first_name: "Colin",
  last_name: "Brune",
  image_url: image_urls.sample
  },
  {
  first_name: "Christy",
  last_name: "Bruno",
  image_url: image_urls.sample
  },
  {
  first_name: "Phillip",
  last_name: "Reese",
  image_url: image_urls.sample
  },
  {
  first_name: "Bobby",
  last_name: "Patterson",
  image_url: image_urls.sample
  },
  {
  first_name: "Courtney",
  last_name: "Gams",
  image_url: image_urls.sample
  },
  {
  first_name: "Thomas",
  last_name: "Crouch",
  image_url: image_urls.sample
  },
  {
  first_name: "Gloria",
  last_name: "Coan",
  image_url: image_urls.sample
  },
  {
  first_name: "Jessica",
  last_name: "Skower",
  image_url: image_urls.sample
  },
  {
  first_name: "Danielle",
  last_name: "Hancharik",
  image_url: image_urls.sample
  },
  {
  first_name: "Scott",
  last_name: "Gibbons",
  image_url: image_urls.sample
  },
  {
  first_name: "Danielle",
  last_name: "Goch",
  image_url: image_urls.sample
  },
  {
  first_name: "Ansley",
  last_name: "Schroth",
  image_url: image_urls.sample
  },
  {
  first_name: "Shawn",
  last_name: "Tyska",
  image_url: image_urls.sample
  },
  {
  first_name: "Julie",
  last_name: "Cutler",
  image_url: image_urls.sample
  },
  {
  first_name: "Tara",
  last_name: "Hazle",
  image_url: image_urls.sample
  },
  {
  first_name: "William (Billy)",
  last_name: "Cox",
  image_url: image_urls.sample
  },
  {
  first_name: "Brian",
  last_name: "Mack",
  image_url: image_urls.sample
  },
  {
  first_name: "Chris",
  last_name: "Williams",
  image_url: image_urls.sample
  },
  {
  first_name: "A.J.",
  last_name: "Bauser",
  image_url: image_urls.sample
  },
  {
  first_name: "Evan",
  last_name: "Lassiter",
  image_url: image_urls.sample
  }
]

recruiters_for_tek_systems.each do |recruiter|
  tek_systems.recruiters.create(recruiter)
end

User.destroy_all
user = User.create(name: 'staff', email: 'staff@hack.net', password: 'foobar', password_confirmation:'foobar')

company = Company.create(name: 'TapTech', website: 'http://taptech.net')

recruiter = company.recruiters.create(first_name: 'Tap',last_name: 'That')
(0..5).each do |i|
  recruiter.ratings.create(rate: i, comments: "A #{i} comment", user: user)
end

