class CreateSubsidyBusinessStages < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidy_business_stages do |t|
      t.integer :subsidy_id
      t.integer :business_stage_id

      t.timestamps
    end
    add_index :subsidy_business_stages, :subsidy_id
    add_index :subsidy_business_stages, :business_stage_id
    add_index :subsidy_business_stages, [:subsidy_id, :business_stage_id], unique: true, name: 'sb_index'
  end
end
