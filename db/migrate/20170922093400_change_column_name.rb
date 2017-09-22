class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :urls, :hort_url, :short_url
  end
end
