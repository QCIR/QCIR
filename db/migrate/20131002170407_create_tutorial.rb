class CreateTutorial < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
    	t.string  :title, null: false
    	t.text    :description, null: false
    	t.integer :user_id, null: false
    	t.integer :stage_id, null: false
    	t.integer :category_id, null: false
    	t.integer :comment_id

    	t.integer :status, null: false, default: '0'
    	t.text 	  :moderation

    	t.timestamps
    end
  end
end
