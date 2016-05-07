require 'spec_helper'

describe Category do

  it {should have_many(:videos)}

  # km01:out for shoulda
  # it "a category can save itself" do
  #   category = Category.new(name:"comedies")
  #   category.save
  #   expect(Category.first).to eq(category)
  # end
  #
  # it "a category can have many videos" do
  #
  #   variety = Category.new(name:"variety shows")
  #
  #   flip = Video.create(title:"The Flip Wilson Show", description:"One hour comedy variety show", category:variety)
  #   garry = Video.create(title:"It's Garry Shandlings Show", description:"One hour comedy variety show", category:variety)
  #
  #   expect(variety.videos).to eq([garry,flip])
  #
  # end

end

