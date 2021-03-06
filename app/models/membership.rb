class Membership < ActiveRecord::Base
  belongs_to :group
  belongs_to :user

  validates :group_id, presence: true
  validates :user_id, presence: true
  validates :access_level, presence: true
  validates :status, presence: true
end
