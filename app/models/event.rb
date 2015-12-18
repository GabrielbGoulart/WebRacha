class Event < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  def already_subscribed(user)
    self.users.include?(user)
  end
end
