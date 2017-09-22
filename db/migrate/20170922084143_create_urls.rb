class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :main_url
      t.string :hort_url

      t.timestamps
    end
  end
end
