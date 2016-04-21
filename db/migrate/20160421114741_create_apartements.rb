class CreateApartements < ActiveRecord::Migration
  def change
    create_table :apartements do |t|
      t.string :street
      t.string :area_code
      t.string :house_number
      t.string :city
      t.string :hotline
      t.string :state
      t.string :airbnb_link
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
