class Event < ActiveRecord::Base
  has_many :user, :through => :subscriptions
  has_many :subscriptions
end
