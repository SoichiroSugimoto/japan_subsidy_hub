class CreateSupportTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :support_types do |t|

      t.timestamps
    end
  end
end
