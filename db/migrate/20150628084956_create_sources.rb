class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :uri

      t.timestamps null: false
    end
  end
end
