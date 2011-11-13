AdminUser.find_or_create_by_email("admin@jade.com",
                                  password: "password",
                                  password_confirmation: "password")