class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  def already_subscribed(user)
    self.users.include?(user)
  end

  def setFul
      users = User.all
      goalKeepers =0
      linePlayers= 0
    self.users.each do |p|
        if users.find(p.id).position == "Goleiro"
          goalKeepers += 1
          self.isFulGoal = true if goalKeepers== self.goalkeeperlimit
        else
          linePlayers += 1
          if linePlayers == self.userlimit
          self.isFul = true
        end
        end
      end
  end

  def numberOfUsers(position)
      self.users.each do |p|
        if position == "Goleiro"

        else
        end
      end
  end
end
