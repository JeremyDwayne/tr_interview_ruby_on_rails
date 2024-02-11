class CreateShortUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :short_urls do |t|
      t.string :url
      t.string :short_code

      t.timestamps
    end
    add_index :short_urls, :short_code, unique: true
  end
end
