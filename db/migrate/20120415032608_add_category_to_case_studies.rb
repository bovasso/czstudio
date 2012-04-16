class AddCategoryToCaseStudies < ActiveRecord::Migration
  def change
    add_column :case_studies, :category_id, :integer
  end
end
