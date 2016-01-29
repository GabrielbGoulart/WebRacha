class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  geocoded_by :adress
  after_validation :geocode
  validates :name, presence: true, uniqueness: true, length: {maximum: 30}
  validates :adress, presence: true
  validates_presence_of :date, :hour, :goalkeeperlimit, :userlimit
  validates :goalkeeperlimit, numericality: { max_than_or_equal_to:6 ,  only_integer: true }
    validates :userlimit, numericality: { max_than_or_equal_to:6 ,  only_integer: true }





  def already_subscribed(user)
    self.users.include?(user)
  end

  def setFul
    self.isFul = true
  if self.users.where(position: "Linha").count == self.userlimit || self.users.where(position: "Linha").count > self.userlimit
    self.isFul = true
    self.save
  end
  if self.users.where(position: "Goleiro").count == self.goalkeeperlimit|| self.users.where(position: "Goleiro").count > self.goalkeeperlimit
    self.isFulGoal =true
    self.save
  end
end

  def numberOfUsers(position)
    self.users.where(position: position).count
  end
end
