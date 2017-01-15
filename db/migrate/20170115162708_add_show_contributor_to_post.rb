class AddShowContributorToPost < ActiveRecord::Migration
  def change
    add_column :posts, :show_contributor, :boolean
  end
end
