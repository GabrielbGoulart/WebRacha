class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  def already_subscribed(user)
    self.users.include?(user)
  end

  def setFul
      users = User.all
    self.users.each do |p|
        if users.find(p.id).position == "Goleiro"
          goalKeepers += 1
          self.isFul = true if goalKeepers == self.userlimit
        else
          linePlayers += 1
          self.isFulGoal = true if linePlayers== self.goalkeeperlimit
        end
      end
  end
end
