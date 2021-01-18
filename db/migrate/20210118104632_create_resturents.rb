class CreateResturents < ActiveRecord::Migration[5.2]
  def change
    create_table :resturents do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
