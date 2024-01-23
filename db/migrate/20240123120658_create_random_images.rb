class CreateRandomImages < ActiveRecord::Migration[7.1]
  def change
    create_table :random_images do |t|
      t.string :url

      t.timestamps
    end
  end
end
