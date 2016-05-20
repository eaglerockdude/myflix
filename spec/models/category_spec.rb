require 'spec_helper'

describe Category do
  it {should have_many(:videos)}

  describe '#recent_videos'  do

    it 'returns videos in reverse chronological order by create_date'  do

      variety = Category.new(name:"variety shows")

      flip = Video.create(title:"The Flip Wilson Show", description:"One hour comedy variety show",
                          category:variety, created_at: 1.day.ago)
      garry = Video.create(title:"It's Garry Shandlings Show", description:"One hour comedy variety show",
                           category:variety)
      expect(variety.recent_videos).to eq([garry,flip])

    end

    it 'returns all videos up to a maximum of six'  do
      variety = Category.new(name:"variety shows")

      flip = Video.create(title:"The Flip Wilson Show", description:"One hour comedy variety show",
                          category:variety, created_at: 1.day.ago)
      garry = Video.create(title:"It's Garry Shandlings Show", description:"One hour comedy variety show",
                           category:variety)

      lucy = Video.create(title:"I love Lucy", description:"One hour comedy variety show",
                          category:variety, created_at: 1.day.ago)
      tom  = Video.create(title:"The Tom and Dick Smother's Show", description:"One hour comedy variety show",
                          category:variety)

      ed = Video.create(title:"The Ed Sullivan Show", description:"One hour comedy variety show",
                        category:variety, created_at: 1.day.ago)
      carol = Video.create(title:"The Carol Burnett Show", description:"One hour comedy variety show",
                           category:variety)

      orlando = Video.create(title:"Tony Orlando and Dawn", description:"One hour comedy variety show",
                             category:variety, created_at: 1.day.ago)
      osmond = Video.create(title:"The Osmond's Show", description:"One hour comedy variety show",
                            category:variety)

      expect(variety.recent_videos.count).to be <= 6

    end

    it 'returns nothing(empty array) if no videos found do' do
      variety = Category.new(name:"variety shows")
      expect(variety.recent_videos).to eq([])
    end

  end

end

