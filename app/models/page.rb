class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :title
  slug 	:title
  field :body
  field :navbar, type: Boolean
  field :position, type: Integer
  field :show_title, type: Boolean
  field :page_title
  field :meta_keywords
  field :meta_description

  validates :title, presence: true, uniqueness: true

  before_create :set_position

  def to_param
    slug
  end

  def set_position
    starting_position = Page.where(navbar: true).all.count + 1
    if self.navbar == true
      self.position = starting_position
    # else
    #   self.position = nil
    end
  end
  
end
