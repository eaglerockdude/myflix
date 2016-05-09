class Video < ActiveRecord::Base
  belongs_to :category
  validates :title, :description , presence: true

  def self.search_by_title(search)
    where("title LIKE ?", "%#{search}%").order("created_at DESC")
  end

end

