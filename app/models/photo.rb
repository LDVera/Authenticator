# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  title      :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Photo < ApplicationRecord
  validates :title, presence: true 
  #validates valida que un campo este presente en presence true no guardara el registro
  #a menos que el campo tenga algun valor
  validates :image_url, presence: true
  validates_format_of :image_url, with: /.\.(png|jpeg|jpg|gif)/
end
