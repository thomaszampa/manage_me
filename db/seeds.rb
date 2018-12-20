# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

# RELATIONSHIPS

relationship = Relationship.create!(
  manager_id: 2,
  artist_id: 1,
  )

# USERS

user = User.create!(
  relationship_id: 1,
  first_name: "Tom",
  last_name: "Zampa",
  email: "tom@email.com",
  password: "password",
  access_token: "",
  artist_name: "Dr. Jekyll",
  manager: false,
  )

user = User.create!(
  relationship_id: 1,
  first_name: "Bob",
  last_name: "Manager",
  email: "bob@email.com",
  password: "password",
  access_token: "",
  artist_name: "",
  manager: true,
  )

# GOALS

goal = Goal.create!(
  user_id: 1,
  relationship_id: 1,
  subject: "Social Media Growth",
  body: "Increase Follower Count, Frequency of Posting, and Overall Reach",
  start_date: "2018-02-01 09:30:00",
  end_date: "2019-12-31 11:00:00",
  )

goal = Goal.create!(
  user_id: 1,
  relationship_id: 1,
  subject: "Finish Demo's for Sophmore Album",
  body: "'Inbetween and Outside' - Release Via Matador Records",
  start_date: "2018-05-21 00:00:00",
  end_date: "2020-11-01 11:00:00",
  )

goal = Goal.create!(
  user_id: 1,
  relationship_id: 1,
  subject: "Book Midwest Tour",
  body: "12 Cities - 3 Weeks - 2020",
  start_date: "2018-06-22 11:00:00",
  end_date: "2020-06-01 11:00:00",
  )

goal = Goal.create!(
  user_id: 1,
  relationship_id: 1,
  subject: "PRO Affiliation",
  body: "Set-Up Performing Right, File Necessary Paperwork, and Send to Legal Counsil for Review",
  start_date: "2018-10-15 11:00:00",
  end_date: "2018-11-01 11:00:00",
  )

goal = Goal.create!(
  user_id: 1,
  relationship_id: 1,
  subject: "Album Artwork",
  body: "Concept, Designer, and Renderings -- Designer: Tyler Nelson",
  start_date: "2018-11-01 7:00:00",
  end_date: "2020-11-01 11:00:00",
  )

# REQUESTS
request = Request.create!(
  user_id: 1,
  goal_id: 1,
  relationship_id: 1,
  body: "Pay monthly subscription fee to social media growth service",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-11-31 11:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 1,
  goal_id: 1,
  relationship_id: 1,
  body: "Develope list of similar artists, influences, and persons of interest. Please generate list with necessary social media handles.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-12-31 11:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 1,
  relationship_id: 1,
  body: "Three Instagram posts by end of week 12/15",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-12-15 09:00:00",
  over_due: true,
  complete: false,
  )

request = Request.create!(
  user_id: 1,
  goal_id: 1,
  relationship_id: 1,
  body: "Touch base with Tyler Nelson about social media banner formatting and design.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-11-04 09:00:00",
  over_due: false,
  complete: true,
  )

request = Request.create!(
  user_id: 1,
  goal_id: 2,
  relationship_id: 1,
  body: "Pay session musician for studio time",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-10-25 11:00:00",
  over_due: true,
  complete: false,
  )

request = Request.create!(
  user_id: 1,
  goal_id: 2,
  relationship_id: 1,
  body: "Review working demo for 'Upside Down'",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2019-01-05 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 1,
  goal_id: 2,
  relationship_id: 1,
  body: "Review 'Updsie Down' derivative work liscense",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2019-02-01 12:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 1,
  goal_id: 2,
  relationship_id: 1,
  body: "Omit three tracks from final tracklist. Please consider overall concept when deciding!",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-12-19 12:00:00",
  over_due: true,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 3,
  relationship_id: 1,
  body: "Generate rider list. Please consider fellow band-members, crew, and managers.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2019-06-13 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 3,
  relationship_id: 1,
  body: "Previous initial-plot not accepted by 1/2 the booked venues. Please re-draw.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2019-05-20 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 3,
  relationship_id: 1,
  body: "Cut out two amps, two guitars, and one keyboard from gear list.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-12-31 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 3,
  relationship_id: 1,
  body: "Create alternative set-list for half-hour time slots.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2019-05-01 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 4,
  relationship_id: 1,
  body: "File lyric sheets with library of congress in their entirety.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2020-05-01 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 1,
  goal_id: 4,
  relationship_id: 1,
  body: "Schedule meeting with legal counsil about copyrighting likeness and images.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2020-05-01 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 4,
  relationship_id: 1,
  body: "Pay initial filing fee to ASCAP",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2020-05-01 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 4,
  relationship_id: 1,
  body: "Compare and contrast BMI, ASCAP, and SESAC.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2019-05-01 09:00:00",
  over_due: false,
  complete: false,
  )

request = Request.create!(
  user_id: 1,
  goal_id: 5,
  relationship_id: 1,
  body: "Send .PNG files of existing logo to Tyler to repupose.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-11-01 09:00:00",
  over_due: true,
  complete: false,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 5,
  relationship_id: 1,
  body: "Send free-lance contract to Tyler Nelson.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2020-05-01 09:00:00",
  over_due: false,
  complete: true,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 5,
  relationship_id: 1,
  body: "Schedule interview w/George (graphic designer)",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-08-13 09:00:00",
  over_due: false,
  complete: true,
  )

request = Request.create!(
  user_id: 2,
  goal_id: 5,
  relationship_id: 1,
  body: "Send Tyler free-hand concept art for merchendise, posters, and cover-art.",
  time_stamp: Time.now.strftime('%c'),
  due_date: "2018-11-12 09:00:00",
  over_due: false,
  complete: true,
  )

# CATEGORIES

category = Category.create!(
  name: "Tour",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Album",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Social Media",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Music Business",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Graphics",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Finances",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Recording",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Misc.",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Booking",
  relationship_id: 1,
  )

category = Category.create!(
  name: "EP",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Social Media",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Music Business",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Graphic Design",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Money",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Studio Time",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Misc.",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Touring",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Single",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Instagram/Facebook",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Business",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Album Artwork",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Accounting",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Recording Sessions",
  relationship_id: 1,
  )

category = Category.create!(
  name: "Misc.",
  relationship_id: 1,
  )


#CATEGORY REQUESTS

catreq = CategoryRequest.create!(
  category_id: 10,
  request_id: 1,
  )

catreq = CategoryRequest.create!(
  category_id: 14,
  request_id: 1,
  )

catreq = CategoryRequest.create!(
  category_id: 2,
  request_id: 2,
  )

catreq = CategoryRequest.create!(
  category_id: 4,
  request_id: 3,
  )

catreq = CategoryRequest.create!(
  category_id: 21,
  request_id: 4,
  )

catreq = CategoryRequest.create!(
  category_id: 1,
  request_id: 5,
  )

catreq = CategoryRequest.create!(
  category_id: 6,
  request_id: 6,
  )

catreq = CategoryRequest.create!(
  category_id: 3,
  request_id: 6,
  )

catreq = CategoryRequest.create!(
  category_id: 10,
  request_id: 2,
  )