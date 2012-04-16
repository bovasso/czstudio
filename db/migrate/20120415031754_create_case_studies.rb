class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.string :title
      t.string :location
      t.date :opening_date
      t.text :description
      t.text :summary
      t.text :highlights
      t.text :awards
      t.text :collaborators
      t.boolean :is_active
      t.boolean :is_featured

      t.timestamps
    end
  end
end
