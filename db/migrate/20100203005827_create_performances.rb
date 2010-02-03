class CreatePerformances < ActiveRecord::Migration
  def self.up
    create_table :performances do |t|
      t.string :composer
      t.string :work_title
      t.string :orchestra
      t.date :perform_date

      t.timestamps
    end
  end

  def self.down
    drop_table :performances
  end
end
