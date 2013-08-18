class AddThingToFiles < ActiveRecord::Migration
  def up
    add_attachment :user_files, :thing
  end

  def down
    remove_attachment :user_files, :thing
  end
end
