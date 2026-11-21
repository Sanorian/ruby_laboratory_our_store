class CreateWorkers < ActiveRecord::Migration[8.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :age
      t.integer :salary

      t.timestamps
    end
  end
end
