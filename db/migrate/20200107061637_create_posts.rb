class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    t.string :title,null: false
    t.text :text,limit:10000
    

      t.timestamps
    end
  end
end
