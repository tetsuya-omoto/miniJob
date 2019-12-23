class CreateDels < ActiveRecord::Migration[5.2]
  def change
    create_table :dels do |t|

      t.timestamps
    end
  end
end
