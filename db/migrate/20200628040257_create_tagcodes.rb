class CreateTagcodes < ActiveRecord::Migration[6.0]
  def change
    create_table :tagcodes do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.timestamps
    end
  end
end
