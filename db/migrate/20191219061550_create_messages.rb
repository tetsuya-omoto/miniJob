class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer  :user_id
      t.integer  :job_id
      t.text     :text,  null: false
      t.string   :image
      t.timestamps
    end
  end
end
