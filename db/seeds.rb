AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$10$pNjt1oCEg0fkG7RBdko3E.n0KOXAvRyn9onwKlg4FBK.4mot05zva", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])
User.create!([
  {email: "inheng@gmail.com", encrypted_password: "$2a$10$pRjxXX3E.W1aPv1F2O7JvuXhYNm79fRKc7fvK2tFzkxv5GshsIYZm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-30 21:57:57", last_sign_in_at: "2015-05-30 21:57:57", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: nil, avatar_url: nil},
  {email: "justinsaeheng@gmail.com", encrypted_password: "$2a$10$2sFjBNai.2ePGj.rtNHW0epHCaXM1lcdAFW/Zo7g3ShZYQmsc3hPG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 9, current_sign_in_at: "2015-06-03 04:36:04", last_sign_in_at: "2015-06-03 04:32:51", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: nil, avatar_url: nil}
])
Dish.create!([
  {ingredients: "Angel hair pasta, milk, cheese, garlic, shrimp", photo: "", dish_name: "Fettuccine Alfredo ", date_offered: nil, price_offered: 15.0, max_guests: 3, number_guests_left: nil, profile_id: nil, cuisine_type: "Italian", location: "Sherman and Church", dish_description: "Delicious italian fettuccine with mozzarella alfredo sauce with roasted garlic and shrimp"},
  {ingredients: "Nothing", photo: "", dish_name: "", date_offered: "2015-05-31 00:00:00", price_offered: 15.0, max_guests: 5, number_guests_left: 5, profile_id: nil, cuisine_type: "", location: "Here", dish_description: ""}
])
