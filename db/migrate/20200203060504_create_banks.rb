class CreateBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :banks do |t|

		t.string :image
		t.string :bank
		t.string :name
		t.string :url
		t.string :region1
		t.string :region2
		t.string :region3
		t.string :region4
		t.string :region5
		t.string :region6
		
		t.integer :rank	
		t.float :price1
		t.float :price2
		t.float :price3
		t.float :price4
		
		t.boolean :contactOptions
		t.timestamps
    end
  end
end
