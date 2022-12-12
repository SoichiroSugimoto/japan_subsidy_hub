class CreateSubsidySupportTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidy_support_types do |t|
      t.integer :subsidy_id
      t.integer :support_type_id

      t.timestamps
    end
    add_index :subsidy_support_types, :subsidy_id
    add_index :subsidy_support_types, :support_type_id
    add_index :subsidy_support_types, [:subsidy_id, :support_type_id], unique: true
  end
end
