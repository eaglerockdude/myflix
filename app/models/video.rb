class Video < ActiveRecord::Base
  belongs_to :category
  validates :title, :description , presence: true

  scope :any_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }

  def self.search_by_title(search)
    if search.blank?
      []
    else
      where("title LIKE ?", "%#{search}%").order("created_at DESC")
    end
  end
end

