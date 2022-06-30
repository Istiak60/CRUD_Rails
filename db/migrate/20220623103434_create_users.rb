class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false, unique: true
      t.string :password
      t.string :phoneNo, unique: true
      t.string :user_type
      t.timestamps
      t.references :role, foreign_key: true
    end
  end
end
