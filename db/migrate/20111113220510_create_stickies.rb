class CreateStickies < ActiveRecord::Migration
  def change
    create_table :stickies do |t|
      t.text :text

      t.timestamps
    end
  end
end
