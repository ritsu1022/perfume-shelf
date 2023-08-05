class CreatePerfumes < ActiveRecord::Migration[6.0]
  def change
    create_table :perfumes do |t|

      t.timestamps
    end
  end
end
