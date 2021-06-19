class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.string :city_code
      t.references :pref, null: false, foreign_key: true

      t.timestamps
    end
  end
end
