class CreateSubsidyIndustories < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidy_industories do |t|
      t.integer :subsidy_id
      t.integer :industory_id

      t.timestamps
    end
    add_index :subsidy_industories, :subsidy_id
    add_index :subsidy_industories, :industory_id
    add_index :subsidy_industories, [:subsidy_id, :industory_id], unique: true
  end
end
