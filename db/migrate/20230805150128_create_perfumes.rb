class CreatePerfumes < ActiveRecord::Migration[6.0]
  def change
    create_table :perfumes do |t|
      t.string         :perfumename,  null: false
      t.string         :brand
      t.integer        :type_id
      t.text           :note
      t.text           :memo
      t.references     :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
