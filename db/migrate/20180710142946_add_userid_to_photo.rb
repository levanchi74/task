class AddUseridToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos,:product_id ,:integer
  end
end
