class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.text :blog_entry
      t.integer :game_id

      t.timestamps
    end
  end
end
