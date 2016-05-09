require 'spec_helper'

describe Video do
  it {should belong_to(:category)}
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:description)}

  describe "search_by_title" do

    it "returns an empty array if no match found" do
      longest_day = Video.create(title: "The Longest Day", description: "Finding active record search examples")
      little_big = Video.create(title: "Little Big Man", description: "Little Big Man gets a bath by his step-mom")
      expect(Video.search_by_title("Long Time Companion")).to eq([])
    end

    it "returns an array with one element if for an exact match" do
      longest_day = Video.create(title: "The Longest Day", description: "Finding active record search examples")
      little_big = Video.create(title: "Little Big Man", description: "Little Big Man gets a bath by his step-mom")
      expect(Video.search_by_title("The Longest Day")).to eq([longest_day])
    end

    it "returns an array with one element for a partial match" do
      longest_day = Video.create(title: "The Longest Day", description: "Finding active record search examples")
      little_big = Video.create(title: "Little Big Man", description: "Little Big Man gets a bath by his step-mom")
      expect(Video.search_by_title("ongest Day")).to eq([longest_day])
    end

    it "returns an array of all matches ordered by create date" do
    longest_day = Video.create(title: "The Longest Day", description: "Finding active record search examples", created_at:2.day.ago)
    longfellow  = Video.create(title: "Longfellow", description: "A cop with a cowboy hat", created_at:1.day.ago)
    expect(Video.search_by_title("long")).to eq([longest_day,longfellow])
    end

  end
  end


