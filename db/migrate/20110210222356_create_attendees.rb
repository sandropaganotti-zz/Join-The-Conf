class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.integer :conference_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end
