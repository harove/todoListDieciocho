class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :taskname
      t.string :taskphoto

      t.timestamps
    end
  end
end
