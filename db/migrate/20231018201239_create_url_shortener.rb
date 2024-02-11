class CreateUrlShortener < ActiveRecord::Migration[6.1]
  def change
    create_table :url_shortener do |t|
      t.string :url
      t.string :short_code

      t.timestamps
    end
    add_index :url_shortener, :short_code, unique: true
  end
end
