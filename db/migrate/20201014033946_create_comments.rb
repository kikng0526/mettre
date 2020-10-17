class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :fashion, foreign_key: true
      t.text :text,           null: false
      t.string  :user_nickname
      t.timestamps
    end
  end
end
