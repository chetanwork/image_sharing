class Image < ActiveRecord::Base
	
	belongs_to :album

  	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes
  	# validates_presence_of :name, :on => :create, :message => "Name can't be blank"
  	# validates_presence_of :tag_line, :on => :create, :message => "Tag Line can't be blank"

end
