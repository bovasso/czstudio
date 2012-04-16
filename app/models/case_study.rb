class CaseStudy < ActiveRecord::Base
  
  attr_accessible :awards, :collaborators, :description, :highlights, :images_attributes, :is_active, :is_featured, :location, :opening_date, :summary, :title, :category_id, :slugged
  
  belongs_to :category
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :images
  accepts_nested_attributes_for :images, :allow_destroy => true 

end
