class CreateSubsidyIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidy_issues do |t|
      t.integer :subsidy_id
      t.integer :issue_id

      t.timestamps
    end
    add_index :subsidy_issues, :subsidy_id
    add_index :subsidy_issues, :issue_id
    add_index :subsidy_issues, [:subsidy_id, :issue_id], unique: true
  end
end
