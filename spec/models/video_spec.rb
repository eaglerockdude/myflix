require 'spec_helper'

describe Video do
  it "video can save itself" do
    video = Video.new(title:"Kingpin", description:"Best hairdoos in bowling", url_small_cover:"smallcover.jpg",
                      url_large_cover:"largecover.jpg")
    video.save
    # grab our first video created and see if the same as we just created.
    expect(Video.first).to eq(video)
  end
end
