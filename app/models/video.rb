class Video < ActiveRecord::Base
  belongs_to :category
  has_many :reviews
  validates :title, :description , presence: true

  def self.search_by_title(search)
    if search.blank?
      []
    else
      where("title LIKE ?", "%#{search}%").order("created_at DESC")
    end
  end
end

