class CreateFile < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string :name

      t.timestamps
    end
  end
end
