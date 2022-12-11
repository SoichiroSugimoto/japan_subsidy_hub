class CreateSubsidies < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidies do |t|
      t.string :name, null: false
      t.string :japanese_name, null: false
      t.string :explanation, null: false
      t.string :summary, null: false
      t.string :link, null: false
      t.boolean :soft_delete, null: false

      t.timestamps
    end
  end
end
