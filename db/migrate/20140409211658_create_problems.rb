class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.references :vehicle_model, index: true

      t.timestamps
    end
  end
end
