class CreateWinks < ActiveRecord::Migration
	def change
		create_table :winks do |t|
			t.text :subtext
			t.string :giver
			t.string :receiver

			t.timestamps
		end
	end
end