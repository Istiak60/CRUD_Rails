class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer :role_name,NULL:false,index:true
      t.timestamps
    end
  end
end
