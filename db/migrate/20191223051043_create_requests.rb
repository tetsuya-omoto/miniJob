class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer  :user_id
      t.integer  :job_id
      t.string   :name,      null: false
      t.integer   :price,      null: false
      t.integer  :del_time,  null: false
      t.text     :text,      null: false
      t.timestamps
    end
  end
end
