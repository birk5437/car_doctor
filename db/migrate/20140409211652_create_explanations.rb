class CreateExplanations < ActiveRecord::Migration
  def change
    create_table :explanations do |t|
      t.references :problem, index: true
      t.text :description

      t.timestamps
    end
  end
end
