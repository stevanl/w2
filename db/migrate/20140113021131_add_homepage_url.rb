class AddHomepageUrl < ActiveRecord::Migration
  def change
    add_column :things, :homepage_url, :string
  end
end
