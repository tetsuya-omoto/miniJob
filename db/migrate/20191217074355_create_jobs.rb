class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer  :user_id
      t.string :name,          null: false, default: ""
      t.string :hope_price,     null: false, default: ""
      t.text :text,             null: false
      t.timestamps
    end
  end
end
