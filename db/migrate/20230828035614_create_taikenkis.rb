class CreateTaikenkis < ActiveRecord::Migration[6.1]
  def change
    create_table :taikenkis do |t|
      t.text :body

      t.timestamps
    end
  end
end
