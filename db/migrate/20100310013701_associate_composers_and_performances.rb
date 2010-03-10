class AssociateComposersAndPerformances < ActiveRecord::Migration
  def self.up
    add_column :performances, :composer_id, :integer
  end

  def self.down
    remove_column :performances, :composer_id
  end
end
