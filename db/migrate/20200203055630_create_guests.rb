class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|

		
		t.integer :money
		t.integer :age
		t.boolean :sex
		t.string :region
		t.string :birthday
		
		# 개월수 6, 12, 24, 36
		t.float :price1
		t.float :price2
		t.float :price3
		t.float :price4
		
		# 대면 / 비대면
		t.boolean :contactOptions
		
		t.timestamps
			
    end
  end
end
