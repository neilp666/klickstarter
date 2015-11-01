# == Schema Information
#
# Table name: projects
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  name              :string(255)
#  short_description :text
#  description       :text
#  image_url         :string(255)
#  status            :string(255)      default("pending")
#  goal              :decimal(8, 2)
#  expiration_date   :datetime
#  created_at        :datetime
#  updated_at        :datetime
#

class Project < ActiveRecord::Base
  belongs_to :user
end
