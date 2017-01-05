class AddColumnsToContributors < ActiveRecord::Migration
  def change
    add_column :contributors, :twitter, :string
    add_column :contributors, :site, :string
  end
end
