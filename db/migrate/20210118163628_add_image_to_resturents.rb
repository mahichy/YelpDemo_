class AddImageToResturents < ActiveRecord::Migration[5.2]
  def change
    add_column :resturents, :image, :string
  end
end
