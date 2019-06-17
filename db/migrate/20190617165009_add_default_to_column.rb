class AddDefaultToColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :usertodos, :completed, :boolean, :default => false
  end
end
