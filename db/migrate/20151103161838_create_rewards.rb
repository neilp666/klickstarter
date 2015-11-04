class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|

      t.references :project, index: true, foreign_key: true
      t.text :description
      t.integer :value
      t.decimal :shipping, precision: 0, scale: 2
      t.integer :number_available
      t.date :estimated_delivery


      t.timestamps
    end
  end
end
