# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# RELATIONSHIPS

relationship = Relationship.create(
  manager_id: 2,
  artist_id: 1,
  )

relationship = Relationship.create(
  manager_id: 4,
  artist_id: 3,
  )

relationship = Relationship.create(
  manager_id: 4,
  artist_id: 5,
  )

# USERS

user = User.create(
  relationship_id: 1,
  first_name: "Tom",
  last_name: "Zampa",
  email: "tom@email.com",
  password_digest: "",
  access_token: "",
  artist_name: "Dr. Jekyll",
  manager: false,
  )

user = User.create(
  relationship_id: 1,
  first_name: "Bob",
  last_name: "Manager",
  email: "bob@email.com",
  password_digest: "",
  access_token: "",
  artist_name: "",
  manager: true,
  )

user = User.create(
  relationship_id: 2,
  first_name: "Jack",
  last_name: "Jackson",
  email: "jack@email.com",
  password_digest: "",
  access_token: "",
  artist_name: "Jackyboi",
  manager: false,
  )

user = User.create(
  relationship_id: 2,
  first_name: "Steve",
  last_name: "Manager",
  email: "steve@email.com",
  password_digest: "",
  access_token: "",
  artist_name: "",
  manager: true,
  )

user = User.create(
  relationship_id: 3,
  first_name: "Frank",
  last_name: "Frankson",
  email: "frank@email.com",
  password_digest: "",
  access_token: "",
  artist_name: "Big Frank",
  )

# GOALS

goal = Goal.create(
  user_id: 1,
  relationship_id: 1,
  subject: "Social Media Growth",
  body: "Increase follower count, freequency of posting, and overall reach on Instagram, Facebook, and Twitter",
  start_date: 2018-11-01,
  end_date: 2019-11-01,
  )

goal = Goal.create(
  user_id: 1,
  relationship_id: 1,
  subject: "Finish Sophmore Album",
  body: "'PhonkMasterFresh' - Hottest Mixtape of 2020",
  start_date: 2018-11-01,
  end_date: 2020-11-01,
  )

goal = Goal.create(
  user_id: 3,
  relationship_id: 2,
  subject: "Book Tour",
  body: "12 Cities - 3 Weeks - 2020",
  start_date: 2020-06-01,
  end_date: 2020-06-22,
  )

goal = Goal.create(
  user_id: 3,
  relationship_id: 2,
  subject: "PRO Affiliation",
  body: "Set-up Performing Right and File Necessary Paperwork",
  start_date: 2018-10-15,
  end_date: 2018-11-01,
  )

goal = Goal.create(
  user_id: 2,
  relationship_id: 1,
  subject: "Tour Management",
  body: "Dates, Cities, Hotels, Etc.",
  start_date: 2020-06-01,
  end_date: 2020-06-01,
  )

goal = Goal.create(
  user_id: 5,
  relationship_id: 3,
  subject: "Album Artwork",
  body: "Concept, Designer, and Renderings",
  start_date: 2018-11-01,
  end_date: 2020-11-01,
  )

goal = Goal.create(
  user_id: 5,
  relationship_id: 3,
  subject: "Stuff",
  body: "Get That Stuff Done Kid",
  start_date: 2018-11-01,
  end_date: 2020-11-02,
  )

# REQUESTS

request = Request.create(
  user_id: 3,
  goals_id: 7,
  relationship_id: 2,
  body: "Pay session musician for studio time on 10/05/2018",
  time_stamp: Time.now.strftime('%c'),
  due_date: 2018-11-01,
  over_due: true,
  complete: false,
  )

request = Request.create(
  user_id: 1,
  goals_id: 2,
  relationship_id: 1,
  body: "Review working demo for 'Upside Down'",
  time_stamp: Time.now.strftime('%c'),
  due_date: 2018-11-15,
  over_due: false,
  complete: true,
  )

request = Request.create(
  user_id: 1,
  goals_id: 2,
  relationship_id: 1,
  body: "Review 'Updsie Down' derivative work liscense",
  time_stamp: Time.now.strftime('%c'),
  due_date: 2018-11-25,
  over_due: false,
  complete: false,
  )

request = Request.create(
  user_id: 4,
  goals_id: 6,
  relationship_id: 3,
  body: "Schedule interview w/George (graphic designer)",
  time_stamp: Time.now.strftime('%c'),
  due_date: 2019-06-13,
  over_due: false,
  complete: true,
  )

request = Request.create(
  user_id: 2,
  goals_id: 1,
  relationship_id: 1,
  body: "Three Instagram posts by end of week 12/15",
  time_stamp: Time.now.strftime('%c'),
  due_date: 2018-11-04,
  over_due: true,
  complete: false,
  )

request = Request.create(
  user_id: 1,
  goals_id: 1,
  relationship_id: 1,
  body: "Pay monthly subscription fee to social media growth service",
  time_stamp: Time.now.strftime('%c'),
  due_date: 2018-11-31,
  over_due: false,
  complete: false,
  )

# CATEGORIES

category = Category.create(
  name: "Tour",
  relationship_id: 1,
  )

category = Category.create(
  name: "Album",
  relationship_id: 1,
  )

category = Category.create(
  name: "Social Media",
  relationship_id: 1,
  )

category = Category.create(
  name: "Music Business",
  relationship_id: 1,
  )

category = Category.create(
  name: "Graphics",
  relationship_id: 1,
  )

category = Category.create(
  name: "Finances",
  relationship_id: 1,
  )

category = Category.create(
  name: "Recording",
  relationship_id: 1,
  )

category = Category.create(
  name: "Misc.",
  relationship_id: 1,
  )

category = Category.create(
  name: "Booking",
  relationship_id: 2,
  )

category = Category.create(
  name: "EP",
  relationship_id: 2,
  )

category = Category.create(
  name: "Social Media",
  relationship_id: 2,
  )

category = Category.create(
  name: "Music Business",
  relationship_id: 2,
  )

category = Category.create(
  name: "Graphic Design",
  relationship_id: 2,
  )

category = Category.create(
  name: "Money",
  relationship_id: 2,
  )

category = Category.create(
  name: "Studio Time",
  relationship_id: 2,
  )

category = Category.create(
  name: "Misc.",
  relationship_id: 2,
  )

category = Category.create(
  name: "Touring",
  relationship_id: 3,
  )

category = Category.create(
  name: "Single",
  relationship_id: 3,
  )

category = Category.create(
  name: "Instagram/Facebook",
  relationship_id: 3,
  )

category = Category.create(
  name: "Business",
  relationship_id: 3,
  )

category = Category.create(
  name: "Album Artwork",
  relationship_id: 3,
  )

category = Category.create(
  name: "Accounting",
  relationship_id: 3,
  )

category = Category.create(
  name: "Recording Sessions",
  relationship_id: 3,
  )

category = Category.create(
  name: "Misc.",
  relationship_id: 3,
  )


#CATEGORY REQUESTS

catreq = CategoryRequest.create(
  category_id: 10,
  request_id: 1,
  )

catreq = CategoryRequest.create(
  category_id: 14,
  request_id: 1,
  )

catreq = CategoryRequest.create(
  category_id: 2,
  request_id: 2,
  )

catreq = CategoryRequest.create(
  category_id: 4,
  request_id: 3,
  )

catreq = CategoryRequest.create(
  category_id: 21,
  request_id: 4,
  )

catreq = CategoryRequest.create(
  category_id: 1,
  request_id: 5,
  )

catreq = CategoryRequest.create(
  category_id: 6,
  request_id: 6,
  )

catreq = CategoryRequest.create(
  category_id: 3,
  request_id: 6,
  )

catreq = CategoryRequest.create(
  category_id: 10,
  request_id: 2,
  )