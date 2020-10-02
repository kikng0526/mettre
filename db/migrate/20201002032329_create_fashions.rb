class CreateFashions < ActiveRecord::Migration[6.0]
  def change
    create_table :fashions do |t|

      t.string :title,        null: false
      t.text :text,           null: false
      t.integer :sex_id,      null: false
      t.integer :age_id,      null: false
      t.integer :height_id,   null: false
      t.string :accessories
      t.string :tops
      t.string :outer
      t.string :pants

      t.references :user,         null: false, foreign_key: true

      t.timestamps
    end
  end
end
