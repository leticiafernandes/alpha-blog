class InsertIntoUsers < ActiveRecord::Migration[5.1]
  def change
    User.create(username: "admin_teste", email: "admin_teste@mailinator.com", password: "1q2w3e4r", admin: true)
  end
end
