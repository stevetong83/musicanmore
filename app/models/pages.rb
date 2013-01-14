class Pages
  include Mongoid::Document
  field :title
  field :body
  field :navbar, type: Bollean
  field :position, type: Integer
  
end
