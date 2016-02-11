class AddAttachementToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :attachement, :string
  end
end
