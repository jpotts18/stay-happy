# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first                  :string
#  last                   :string
#  birthday               :date
#  checkin_hour           :integer
#  checkin_minute         :integer
#  timezone               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  roles                  :string
#

class User < ActiveRecord::Base

  has_many :goals

  ## PeterGate Roles
  ## The :user role is added by default and shouldn't be included in this list.
  petergate(roles: [:admin])

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    "#{self.first} #{self.last}"
  end
end
