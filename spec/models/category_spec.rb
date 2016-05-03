require 'spec_helper'

describe Category do
 it "a category can save itself" do
   category = Category.new(name:"comedies")
   category.save
   expect(Category.first).to eq(category)
 end
end
