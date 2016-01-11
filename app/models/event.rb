class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  def already_subscribed(user)
    self.users.include?(user)
  end

  def setFul
      users = User.all
    self.users.each do |p|
      if users.find(p.id).position == "Goleiro"
        goalKeepers = users.find(p.id).position
      else
        linePlayers = users.find(p.id).position
      end

      isFul = true if goalKeepers.count(:all)== self.userlimit
      isFulGoal = true if linePlayers.count(:all) == self.goalkeeperlimit
  end
end
