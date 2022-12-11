class CreateBusinessStages < ActiveRecord::Migration[6.1]
  def change
    create_table :business_stages do |t|
      t.string :name, null: false
      t.integer :category, null: false

      t.timestamps
    end
  end
end
