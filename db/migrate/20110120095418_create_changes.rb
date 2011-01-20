class CreateChanges < ActiveRecord::Migration
  def self.up
    create_table :changes do |t|
      t.integer :person_id
      t.integer :ip
      t.timestamps
    end
  end

  def self.down
    drop_table :changes
  end
end
