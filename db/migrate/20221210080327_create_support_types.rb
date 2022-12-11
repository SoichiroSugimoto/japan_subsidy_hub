class CreateSupportTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :support_types do |t|
      t.string :name, null: false
      t.integer :category, null: false

      t.timestamps
    end
  end
end
