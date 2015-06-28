# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# seed our videos db:


Video.create(title: "The Matrix", description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.", url_small_cover:"url small cover", url_large_cover:"url big cover")
Video.create(title: "The Time Machine", description: "A Victorian Englishman travels to the far future and finds that humanity has divided into two hostile species.", url_small_cover:"url small cover", url_large_cover:"url big cover")
Video.create(title: "First Men in the Moon", description: "Based on the HG Wells story. The world is delighted when a space craft containing a crew made up of the world's astronauts lands on the moon, they think for the first time.", url_small_cover:"url small cover", url_large_cover:"url big cover")
Video.create(title: "Journey to the Center of the Earth", description: "An Edinburgh professor and assorted colleagues follow an explorer's trail down an extinct Icelandic volcano to the earth's center.", url_small_cover:"url small cover", url_large_cover:"url big cover")
Video.create(title: "Kingpin", description: "A star bowler whose career was prematurely cut off hopes to ride a new prodigy to success and riches.", url_small_cover:"url small cover", url_large_cover:"url big cover")
Video.create(title: "The Blue Max", description: "A young pilot in the German air force of 1918, disliked as lower-class and unchivalrous, tries ambitiously to earn the medal offered for 20 kills.", url_small_cover:"url small cover", url_large_cover:"url big cover")

# t.string   "title"
# t.text     "description"
# t.string   "url_small_cover"
# t.string   "url_large_cover"
# t.datetime "created_at"
# t.datetime "updated_at"


