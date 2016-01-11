for i in 0..10
user = User.new(name:"gabriel#{i}", email: "gabriel#{i}@gmail.com", password: "12345678", position: "Linha")
user.save!
end
