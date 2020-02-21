class CreateRecoms < ActiveRecord::Migration[6.0]
  def change
    create_table :recoms do |t|

		t.string :title
     	t.text :content
      
      	t.text :address
      	t.string :phone
		
      	t.decimal :latitude, precision: 15, scale: 10
      	t.decimal :longitude, precision: 15, scale: 10	
		
      t.timestamps
    end
  end
end
