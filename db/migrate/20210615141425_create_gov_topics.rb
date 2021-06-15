class CreateGovTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :gov_topics do |t|
      t.string :gov_name
      t.string :title
      t.string :period
      t.string :content
      t.string :target
      t.string :counter
      t.string :link
      t.boolean :emergency, null: false, default: false
      t.boolean :primary_sector, null: false, default: false
      t.boolean :other_sector, null: false, default: false
      t.boolean :emigration, null: false, default: false
      t.boolean :senior, null: false, default: false
      t.boolean :parenting, null: false, default: false
      t.boolean :other, null: false, default: true

      t.timestamps
    end
  end
end
