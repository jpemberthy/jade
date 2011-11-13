AdminUser.find_or_create_by_email("admin@jade.com",
                                  password: "password",
                                  password_confirmation: "password")


names = [ "Federico Builes", "Diego Echeverri", "Juan Pemberthy", "Tony Montana",
          "Michael Corleone", "Eddard Stark", "Robert Barratheon" ]

100.times do
  Transaction.create( date: 1.day.ago,
                      amount: SecureRandom.random_number(25),
                      user_name: names.sample,
                      payment_method: Transaction::PAYMENT_OPTIONS.sample,
                      last_four: Random.new.rand(1000..9999).to_s )
end