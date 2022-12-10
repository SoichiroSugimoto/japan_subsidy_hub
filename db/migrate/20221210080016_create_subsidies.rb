class CreateSubsidies < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidies do |t|

      t.timestamps
    end
  end
end
