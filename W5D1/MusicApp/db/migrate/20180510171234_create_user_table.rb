class CreateUserTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :password_digrest, null: false
      t.string :session_token, null: false

      t.timestamps
    end

      add_index :users, :session_token
  end
end
