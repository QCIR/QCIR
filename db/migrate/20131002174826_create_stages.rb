class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string  :subtitle, null: false
      t.text    :content, null: false
      t.integer :color, null: false
      t.integer :tutorial_id, null: false

      t.timestamps
    end
  end
end
