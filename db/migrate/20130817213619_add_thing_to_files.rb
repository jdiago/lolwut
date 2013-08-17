class AddThingToFiles < ActiveRecord::Migration
  def up
    add_attachment :files, :thing
  end

  def down
    remove_attachment :files, :thing
  end
end
