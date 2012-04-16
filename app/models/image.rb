class Image < ActiveRecord::Base
  attr_accessible :caption, :case_study_id
  
  belongs_to :case_study
  
  has_attached_file :image, :styles => { :small => "150x150>", :medium => "720x540" , :large => "1024x768>" }
  
  #validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 10.megabytes
  
end
