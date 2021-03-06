class Photo < ActiveRecord::Base
  MAIN_DIMENSIONS = "940x470"

  belongs_to :project
  has_attached_file :image,
                    :default_style => :main,
                    :styles => {
                      :main => "#{MAIN_DIMENSIONS}#",
                      :index => "500x300#"
                    },
                    :default_url => "/assets/no-image-:style.png"

  attr_accessible :image
end
