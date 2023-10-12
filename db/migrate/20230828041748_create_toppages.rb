class CreateToppages < ActiveRecord::Migration[6.1]
  def change
    create_table :toppages do |t|
      t.text :body

      t.timestamps
    end
  end
end
