class Setting
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name
  field :contact_page, type: Boolean
  field :blog_as_home_page, type: Boolean
end
