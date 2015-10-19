# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  name       :string
#  type       :string
#  user_id    :integer
#  end_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Goal < ActiveRecord::Base
  belongs_to :user
end
