class CreateIndustories < ActiveRecord::Migration[6.1]
  def change
    create_table :industories do |t|

      t.timestamps
    end
  end
end
