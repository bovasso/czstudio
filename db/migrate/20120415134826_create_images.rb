class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :caption
      t.integer :case_study_id

      t.timestamps
    end
  end
end
