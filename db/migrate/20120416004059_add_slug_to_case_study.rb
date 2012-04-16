class AddSlugToCaseStudy < ActiveRecord::Migration
  def change
    add_column :case_studies, :slug, :string
    
    add_index :case_studies, :slug, unique: true
  end
end
