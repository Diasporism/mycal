class CreateCalendars < ActiveRecord::Migration
  def up
    create_table :calendars do |t|
      t.integer  :owner_id
      t.string   :owner_type

      t.timestamps
    end
  end

  def down
    drop_table :calendars
  end
end
