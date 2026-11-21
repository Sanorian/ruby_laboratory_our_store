class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :title
      t.date :expiration_date

      t.timestamps
    end
  end
end
