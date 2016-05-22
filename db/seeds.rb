# create categories with videos

Category.destroy_all
Video.destroy_all

scifi = Category.new(name:"Sci-fi")
comedy = Category.new(name:"Comedy")
adventure = Category.new(name:"Adventure")

Video.create(title: "The Matrix", description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
             url_small_cover:'matrix_small.png', url_large_cover:'theMatrix.jpg', category: scifi)
Video.create(title: "The Time Machine", description: "A Victorian Englishman travels to the far future and finds that humanity has divided into two hostile species.",
             url_small_cover:"timemachine_small.png", url_large_cover:"theTimeMachine.jpg",category: scifi)
Video.create(title: "First Men in the Moon", description: "Based on the HG Wells story. The world is delighted when a space craft containing a crew made up of the world's astronauts lands on the moon, they think for the first time.",
             url_small_cover:"firstmenmoon_small.png", url_large_cover:"firstMenMoon.jpg",category: scifi)
Video.create(title: "Journey to the Center of the Earth", description: "An Edinburgh professor and assorted colleagues follow an explorer's trail down an extinct Icelandic volcano to the earth's center.",
             url_small_cover:"journeycenterearth_small.png", url_large_cover:"jce.jpg", category: scifi)
Video.create(title: "Kingpin", description: "A star bowler whose career was prematurely cut off hopes to ride a new prodigy to success and riches.",
             url_small_cover:"kingpin_small.png", url_large_cover:"kingPin.jpg",category:comedy)
Video.create(title: "The Blue Max", description: "A young pilot in the German air force of 1918, disliked as lower-class and unchivalrous, tries ambitiously to earn the medal offered for 20 kills.",
             url_small_cover:"thebluemax_small.png", url_large_cover:"TheBlueMax.jpg",category:adventure)


p "Created #{Category.count} categories"
p "Created #{Video.count} videos"






