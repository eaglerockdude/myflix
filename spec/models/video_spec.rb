require 'spec_helper'

describe Video do

  it {should belong_to(:category)}
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:description)}


  # km01: replaced with shoulda
  # it "a video can save itself" do
  #   video = Video.new(title:"Kingpin", description:"Best hairdoos in bowling", url_small_cover:"smallcover.jpg",
  #                     url_large_cover:"largecover.jpg")
  #   video.save
  #   # grab our first video created and see if the same as we just created.
  #   expect(Video.first).to eq(video)
  # end

  # km01: replaced with shoulda
  # it "a video belongs to a category" do
  #
  #   scifi = Category.new(name: "sci-fi")
  #
  #   startrek = Video.create(title:"Star Trek", description:"Adventures of the Starship Enterprise", category: scifi)
  #
  #   expect(startrek.category).to eq(scifi)
  # end

  #km01: replaced with shoulda
  # it "does not save a video without a title"  do
  #  video = Video.create(description: "test video description")
  #  expect(Video.count).to eq(0) # as validation prevents any save.
  # end
  #
  # it "does not save a video without a description"  do
  #   video = Video.create(title: "test video title")
  #   expect(Video.count).to eq(0) # as validation prevents any save.
  # end

end
