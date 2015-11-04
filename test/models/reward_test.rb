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

require 'test_helper'

class RewardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
