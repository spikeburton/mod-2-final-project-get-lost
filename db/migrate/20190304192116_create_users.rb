class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :city
      t.integer :zipcode
      t.string :state
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
