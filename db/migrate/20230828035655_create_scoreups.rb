class CreateScoreups < ActiveRecord::Migration[6.1]
  def change
    create_table :scoreups do |t|
      t.text :body

      t.timestamps
    end
  end
end
