class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer  :user_id
      t.integer  :del_id
      t.text     :text
      t.integer  :star
      t.timestamps
    end
  end
end
