# == Schema Information
#
# Table name: rewards
#
#  id                 :integer          not null, primary key
#  project_id         :integer
#  description        :text
#  value              :integer
#  shipping           :decimal(0, 2)
#  number_available   :integer
#  estimated_delivery :date
#  created_at         :datetime
#  updated_at         :datetime
#

class Reward < ActiveRecord::Base

  belongs_to :project


  validates :description, :value, :estimated_delivery, presence: true
  validates :value, numericality: { greater_than_or_equal_to: 0 }
  validates :number_available, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :estimated_delivery, date: { after: Date.today }
end
