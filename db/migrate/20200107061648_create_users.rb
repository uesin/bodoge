class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    t.string :nicname,null:false,unique:true
    t.string :email,null:false,unique:true
    t.string :password,null:false
    t.text :icon
    t.text :text,limit:10000

      t.timestamps
    end
  end
end
