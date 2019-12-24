class CreateDels < ActiveRecord::Migration[5.2]
  def change
    create_table :dels do |t|
      t.integer  :user_id
      t.integer  :job_id
      t.integer  :request_id
      t.string   :name
      t.integer   :price
      t.integer  :del_time
      t.text     :text,      null: false
      t.timestamps
    end
  end
end
