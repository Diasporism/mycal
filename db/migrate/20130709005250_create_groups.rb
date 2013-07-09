class CreateGroups < ActiveRecord::Migration
  def up
    create_table :groups do |t|
      t.references :user
      t.string :name,         :null => false
      t.text :description,    :null => false
      t.attachment :avatar
      t.string :phone_number, :null => false
      t.string :address,      :null => false

      t.timestamps
    end
    add_index :groups, :user_id
  end

  def down
    drop_table :groups
  end
end
