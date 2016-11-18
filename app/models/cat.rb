# == Schema Information
#
# Table name: cats
#
#  id                   :integer          not null, primary key
#  name                 :string           not null
#  age                  :integer
#  gender               :string
#  fur_color            :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

class Cat < ApplicationRecord
	has_attachment :picture, accept: [:jpg, :png, :gif]
  belongs_to :user
  validates_presence_of :name
  validates_inclusion_of :gender, in: %w(male female)
end
