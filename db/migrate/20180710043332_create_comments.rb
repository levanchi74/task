class CreateComments < ActiveRecord::Migration[5.2]
  def change
    drop_table :comments
    create_table :comments do |t|
      t.string :body
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
