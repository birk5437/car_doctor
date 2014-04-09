class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :explanation, index: true
      t.text :description

      t.timestamps
    end
  end
end
